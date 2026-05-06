import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/visa_application.dart';
part 'statistics_screen_state.freezed.dart';

@freezed
class StatisticsScreenState with _$StatisticsScreenState {
  const factory StatisticsScreenState({
    @Default(0) int index,
    @Default('14:00') String? firstTime,
    @Default('16:00') String? endTime,
    @Default([]) List<VisaApplication> visaApplications,
    DateTime? firstDate,
    DateTime? endDate,
    RangeValues? rangeValues,
    @Default(false) bool? openUpdate,
    @Default(null) Object? error,
  }) = _StatisticsScreenState;

  factory StatisticsScreenState.initial() => const StatisticsScreenState();

  factory StatisticsScreenState.error(Object error) =>
      StatisticsScreenState(error: error);
}
