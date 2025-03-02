import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marti_case/core/cache/hive_cache_initializer.dart';
import 'package:marti_case/core/init/bloc_provider/app_bloc_provider.dart';
import 'package:marti_case/features/home/presentation/view/home_view.dart';
import 'package:marti_case/core/init/service_locator/service_locator.dart'
as dependencyInjection;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dependencyInjection.initalize();
  await HiveCacheInitializer.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      ensureScreenSize: true,
    builder: (context, child) {
        return MultiBlocProvider(
          providers: AppBlocProvider.getMainBlocProviderList,
          child: MaterialApp(
            title: 'Location Tracking',
            theme: ThemeData(
              useMaterial3: true,
            ),
            home: const HomeView(),
          ),
        );
    },
    );
  }
}

