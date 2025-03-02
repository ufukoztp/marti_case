import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marti_case/core/init/service_locator/service_locator_provider.dart';
import 'package:marti_case/features/home/presentation/bloc/home_cubit.dart';
import 'package:marti_case/features/home/presentation/view/home_view.dart';

mixin HomeMixin on State<HomeView> {
  late final Completer<GoogleMapController> controller;

    CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  initMixin() {
    controller = Completer<GoogleMapController>();
    ServiceLocatorProvider.provide<HomeCubit>().getLocalMarkers();
  }

  @override
  void initState() {
    initMixin();
    super.initState();
  }

  //listenStart
  listenStart(){
    ServiceLocatorProvider.provide<HomeCubit>().listenStart();
  }

  //listenStop
  listenStop(){
    ServiceLocatorProvider.provide<HomeCubit>().listenStop();
  }

  clearMarkers(){
    ServiceLocatorProvider.provide<HomeCubit>().clearMarkers();
  }





}
