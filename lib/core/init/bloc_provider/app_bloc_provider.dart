import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marti_case/core/init/service_locator/service_locator_provider.dart';
import 'package:marti_case/features/home/presentation/bloc/home_cubit.dart';
import 'package:provider/single_child_widget.dart';

class AppBlocProvider {
  static final List<SingleChildWidget> _appBlocs = [
    BlocProvider<HomeCubit>(
      create: (_) => ServiceLocatorProvider.provide<HomeCubit>(),
    ),

  ];

  static List<SingleChildWidget> get getMainBlocProviderList => _appBlocs;
}
