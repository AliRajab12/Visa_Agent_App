import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_state.freezed.dart';

@freezed
class DashboardScreenState with _$DashboardScreenState {
  const factory DashboardScreenState({
    @Default(0) int index,
    @Default(null) Object? error,
  }) = _DashboardScreenState;

  factory DashboardScreenState.initial() => const DashboardScreenState();

  factory DashboardScreenState.error(Object error) =>
      DashboardScreenState(error: error);
}
