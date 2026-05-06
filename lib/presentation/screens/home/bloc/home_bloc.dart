import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/visa_application.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(const HomeScreenState()) {
    on<FilterAppsEvent>((event, emit) {
      switch (event.index) {
        case 0:
          emit(state.copyWith(
              index: event.index,
              filteredVisaApplications: state.visaApplications
                  .where((element) => element.status == "pending")
                  .toList()));
          break;
        case 1:
          emit(state.copyWith(
              index: event.index,
              filteredVisaApplications: state.visaApplications
                  .where((element) => element.status == "ongoing")
                  .toList()));
          break;
        case 2:
          emit(state.copyWith(
              index: event.index,
              filteredVisaApplications: state.visaApplications
                  .where((element) => element.status == "completed")
                  .toList()));
          break;
        case 3:
          emit(state.copyWith(
              index: event.index,
              filteredVisaApplications: state.visaApplications));
          break;
      }
    });
    on<FetchVisaAppsEvent>((event, emit) async {
      emit(state.copyWith(loading: true));
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(
          visaApplications: visaApps,
          filteredVisaApplications: visaApps
              .where((element) => element.status == "pending")
              .toList()));
      emit(state.copyWith(loading: false));
    });
  }
}
