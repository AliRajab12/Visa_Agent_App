import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'statistics_screen_event.dart';
import 'statistics_screen_state.dart';

class StatisticsScreenBloc
    extends Bloc<StatisticsScreenEvent, StatisticsScreenState> {
  StatisticsScreenBloc()
      : super(StatisticsScreenState(
            rangeValues: const RangeValues(2000, 6000),
            firstDate: DateTime.tryParse('2023-01-01'),
            openUpdate: false,
            index: 0,
            endDate: DateTime.now().add(const Duration(days: 7)))) {
    on<FilterAppsEvent>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
    on<SetDateDurationEvent>((event, emit) {
      emit(state.copyWith(
        firstDate: event.firstDate,
        endDate: event.lastDate,
      ));
    });
    on<SetFirstTimeEvent>((event, emit) {
      emit(state.copyWith(
        firstTime: event.firstTime,
      ));
    });
    on<SetLastTimeEvent>((event, emit) {
      emit(state.copyWith(
        endTime: event.lastTime,
      ));
    });
    on<OpenUpdateEvent>((event, emit) {
      emit(state.copyWith(
        openUpdate: event.value,
      ));
    });
    on<SetRangValuesEvent>((event, emit) {
      emit(state.copyWith(
        rangeValues: event.rangeValues,
      ));
    });
  }
}
