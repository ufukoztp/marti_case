import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:marti_case/core/base/list_base_model/list_base_model.dart';
import 'package:marti_case/features/home/domain/entities/marker_model/marker_model.dart';
import 'package:marti_case/features/home/domain/service/i_home_local_service.dart';


class HomeLocalService extends IHomeLocalService {
  HomeLocalService() {
    initialize();
  }
  @override
  String get boxName => "HomeService";

  @override
  void registerAdapters() {
    Hive.registerAdapter(
      "HomeService",
          (json) => ListBaseModel<MarkerModel>.fromMap(json,MarkerModel.fromJson),
    );
  }
}
