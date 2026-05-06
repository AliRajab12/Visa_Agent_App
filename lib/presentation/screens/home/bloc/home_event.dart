import 'package:equatable/equatable.dart';

abstract class HomeScreenEvent extends Equatable {
  const HomeScreenEvent();
}

class FetchVisaAppsEvent extends HomeScreenEvent {
  const FetchVisaAppsEvent();

  @override
  List<Object?> get props => [];
}

class FilterAppsEvent extends HomeScreenEvent {
  final int index;

  const FilterAppsEvent(this.index);

  @override
  List<Object?> get props => [index];
}
