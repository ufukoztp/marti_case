import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marti_case/core/extensions/sized_box/sized_box_extension.dart';
import 'package:marti_case/core/init/service_locator/service_locator_provider.dart';
import 'package:marti_case/core/shared_widgets/app_button/app_button.dart';
import 'package:marti_case/features/home/presentation/bloc/home_cubit.dart';
import 'package:marti_case/features/home/presentation/mixin/home_mixin.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
         return state.maybeWhen(
           initial: ()=>_buildSuccessWidget,
              success:(markers)=> _buildSuccessWidget,
              orElse: ()=>Container());

        },
      ),
    );
  }

  Stack get _buildSuccessWidget {
    return Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              markers: ServiceLocatorProvider
                  .provide<HomeCubit>()
                  .markers,
              initialCameraPosition: kGooglePlex,
              onMapCreated: (GoogleMapController mapController) {
                controller.complete(mapController);
              },

            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    onTap: listenStart,
                    buttonText: "Konum izlemeyi başlat",
                  ),
                  10.sbxw,
                  AppButton(
                    onTap: listenStop,
                    buttonText: "Konum izlemeyi durdur",
                  ),
                  10.sbxw,
                  AppButton(
                    onTap: clearMarkers,
                    buttonText: "Mevcut Konumları Sıfırla",
                  ),
                ],
              ),
            )
          ],
        );
  }
}

