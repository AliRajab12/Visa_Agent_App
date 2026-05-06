import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/widgets/visa_app_list.dart';

abstract class StatisticsScreenEvent extends Equatable {
  const StatisticsScreenEvent();
}

class FilterAppsEvent extends StatisticsScreenEvent {
  final int index;

  const FilterAppsEvent(this.index);

  @override
  List<Object?> get props => [index];
}


class SetDateDurationEvent extends StatisticsScreenEvent {
  final DateTime? firstDate;
  final DateTime? lastDate;
  SetDateDurationEvent({
    this.firstDate,
    this.lastDate,
  });
  @override
  List<Object?> get props => [];
}

class SetFirstTimeEvent extends StatisticsScreenEvent {
  final String? firstTime;
  SetFirstTimeEvent({
    this.firstTime,
  });

  @override
  List<Object?> get props => [];
}

class SetLastTimeEvent extends StatisticsScreenEvent {
  final String? lastTime;
  SetLastTimeEvent({
    this.lastTime,
  });

  @override
  List<Object?> get props => [];
}

class OpenUpdateEvent extends StatisticsScreenEvent {
  final bool? value;
  OpenUpdateEvent({
   required this.value,
  });

  @override
  List<Object?> get props => [];
}

class SetRangValuesEvent extends StatisticsScreenEvent {
  final RangeValues? rangeValues;
  SetRangValuesEvent({
    this.rangeValues,
  });

  @override
  List<Object?> get props => [];
}

class SetVisaEvent extends StatisticsScreenEvent {
  final VisaApplicationList? visaValues;
  SetVisaEvent({
    this.visaValues,
  });

  @override
  List<Object?> get props => [];
}
