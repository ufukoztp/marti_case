import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marti_case/core/base/list_base_model/list_base_model.dart';
import 'package:marti_case/core/helper/geolocator/geolocator.dart';
import 'package:marti_case/core/init/service_locator/service_locator_provider.dart';
import 'package:marti_case/features/home/domain/entities/marker_model/marker_model.dart';
import 'package:marti_case/features/home/domain/service/i_home_local_service.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
  StreamSubscription<Position>? positionSubscription;
  Set<Marker> markers = {};
  List<MarkerModel> markerModel = [];

  //listenStart
  listenStart() async {
    await GeolocatorHelper.checkAndRequestPermission();
    if (positionSubscription == null) {
      positionSubscription =
          GeolocatorHelper.getPositionStream(distanceFilter: 100).listen(
        (Position position) {
          addMarker(position);
          saveMarker(position);
        },
      );
    }
  }

  //listenStop
  listenStop() {
    positionSubscription?.cancel();
    positionSubscription = null;
  }

  //marker methods
  addMarker(Position position) {
    final marker = Marker(
      markerId: MarkerId(position.timestamp.toString()),
      position: LatLng(position.latitude, position.longitude),
      infoWindow: InfoWindow(
          snippet:
              "${position.latitude}, ${position.longitude}, ${position.heading}"),
    );
    markers.add(marker);
    emit(HomeState.success(markers));
  }

  saveMarker(Position position) {
    markerModel.add(
      MarkerModel(
          latitude: position.latitude,
          longitude: position.longitude,
          timestamp: position.timestamp,
          heading: position.heading),
    );
    ServiceLocatorProvider.provide<IHomeLocalService>()
        .put("HomeService", ListBaseModel(items: markerModel));
  }

  clearMarkers() {
    markers.clear();
    ServiceLocatorProvider.provide<IHomeLocalService>().delete("HomeService");
    emit(HomeState.success(markers));
  }

  getLocalMarkers() {
    final localMarkers =
        ServiceLocatorProvider.provide<IHomeLocalService>().get("HomeService");

    localMarkers?.items.forEach(
      (action) {
        markerModel.add(action);
        markers.add(
          Marker(
            markerId: MarkerId(action.timestamp.toString()),
            position: LatLng(action.latitude!, action.longitude!),
            infoWindow: InfoWindow(
                snippet:
                    "${action.latitude}, ${action.longitude}, ${action.heading}"),
          ),
        );
      },
    );
    emit(HomeState.success(markers));
  }
}
