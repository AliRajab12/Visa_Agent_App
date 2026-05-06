import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/employee.dart';
import 'agency_info_event.dart';
import 'agency_info_state.dart';

class AgencyInfoScreenBloc
    extends Bloc<AgencyInfoScreenEvent, AgencyInfoScreenState> {
  List<Employee> employees = [];
  AgencyInfoScreenBloc() : super(const AgencyInfoScreenState()) {
    on<AddEmployeeEvent>((event, emit) async {
      employees.add(event.employee);
      if (employees.length == 2) {
        emit(state.copyWith(employee: employees, addEmployee: false));
      } else {
        emit(state.copyWith(
          employee: employees,
        ));
      }
    });

    on<ChangeAddEmployeeEvent>((event, emit) async {
      emit(state.copyWith(
        addEmployee: event.value,
      ));
    });
  }
}
