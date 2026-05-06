import 'package:flutter_bloc/flutter_bloc.dart';

import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardScreenBloc
    extends Bloc<DashboardScreenEvent, DashboardScreenState> {
  DashboardScreenBloc() : super(const DashboardScreenState()) {
    on<SetHomeScreen>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
