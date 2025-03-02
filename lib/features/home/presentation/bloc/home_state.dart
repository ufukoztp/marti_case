part of 'home_cubit.dart';

@Freezed(equal:false)
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.success(Set<Marker> markers) = _Success;
  const factory HomeState.failure() = _Failure;
  const factory HomeState.loading() = _Loading;
}
