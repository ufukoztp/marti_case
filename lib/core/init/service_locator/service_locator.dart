// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:marti_case/features/home/data/service/home_local_service.dart';
import 'package:marti_case/features/home/domain/service/i_home_local_service.dart';
import 'package:marti_case/features/home/presentation/bloc/home_cubit.dart';

final _serviceLocator = GetIt.instance;

Future<void> initalize() async {

_serviceLocator.registerLazySingleton<HomeCubit>(()=>HomeCubit());

_serviceLocator.registerLazySingleton<IHomeLocalService>(()=>HomeLocalService());

}

Future<void> _initializeOtherDependencies() async {

}

GetIt get getServiceLocator {
  return _serviceLocator;
}

T provide<T extends Object>() {
  return _serviceLocator<T>();
}
