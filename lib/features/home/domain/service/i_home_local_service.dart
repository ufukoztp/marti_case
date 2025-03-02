import 'package:marti_case/core/base/list_base_model/list_base_model.dart';
import 'package:marti_case/core/cache/hive_cache_manager.dart';
import 'package:marti_case/features/home/domain/entities/marker_model/marker_model.dart';

abstract class IHomeLocalService extends HiveCacheManager<ListBaseModel<MarkerModel>> {}
