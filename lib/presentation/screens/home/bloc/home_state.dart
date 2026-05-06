import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/visa_application.dart';
part 'home_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default(false) bool loading,
    @Default(0) int index,
    @Default([]) List<VisaApplication> visaApplications,
    @Default([]) List<VisaApplication> filteredVisaApplications,
    @Default(null) Object? error,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => const HomeScreenState();

  factory HomeScreenState.error(Object error) => HomeScreenState(error: error);
}
