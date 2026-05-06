import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/visa_application.dart';
part 'previous_visa_app_state.freezed.dart';

@freezed
class PreviousApplicationState with _$PreviousApplicationState {
  const factory PreviousApplicationState({
    @Default(false) bool loading,
    @Default([]) List<VisaApplication> visaApps,
    @Default(null) Object? error,
  }) = _PreviousApplicationState;

  factory PreviousApplicationState.initial() =>
      const PreviousApplicationState();

  factory PreviousApplicationState.loading() =>
      const PreviousApplicationState(loading: true);
  factory PreviousApplicationState.completed() =>
      const PreviousApplicationState(loading: false);

  factory PreviousApplicationState.error(Object error) =>
      PreviousApplicationState(error: error);
}
