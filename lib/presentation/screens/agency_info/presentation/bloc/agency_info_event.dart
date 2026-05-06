import 'package:equatable/equatable.dart';
import 'package:visa_agent_app/presentation/screens/agency_info/data/model/employee.dart';

abstract class AgencyInfoScreenEvent extends Equatable {
  const AgencyInfoScreenEvent();
}

class AddEmployeeEvent extends AgencyInfoScreenEvent {
  final Employee employee;

  const AddEmployeeEvent(this.employee);

  @override
  List<Object?> get props => [employee];
}

class ChooseShiftEvent extends AgencyInfoScreenEvent {
  final String shift;
  final int employeeIndex;

  const ChooseShiftEvent(this.shift, this.employeeIndex);

  @override
  List<Object?> get props => [shift];
}

class ChangeAddEmployeeEvent extends AgencyInfoScreenEvent {
  final bool value;

  const ChangeAddEmployeeEvent(this.value);

  @override
  List<Object?> get props => [value];
}
