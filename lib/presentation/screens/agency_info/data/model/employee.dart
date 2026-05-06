import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  factory Employee({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String phone,
    @Default('') String email,
    @Default('') String shift,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
