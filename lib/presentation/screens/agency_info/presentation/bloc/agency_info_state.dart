import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visa_agent_app/presentation/screens/agency_info/data/model/employee.dart';

part 'agency_info_state.freezed.dart';

@freezed
class AgencyInfoScreenState with _$AgencyInfoScreenState {
  const factory AgencyInfoScreenState({
    @Default(['08:00-16:00', '16:00-23:59', '00:00-08:00']) List<String> shifts,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default([]) List<Employee> employee,
    @Default(true) bool addEmployee,
    @Default(null) Object? error,
  }) = _AgencyInfoScreenState;

  factory AgencyInfoScreenState.initial() => const AgencyInfoScreenState();

  factory AgencyInfoScreenState.error(Object error) =>
      AgencyInfoScreenState(error: error);
}
