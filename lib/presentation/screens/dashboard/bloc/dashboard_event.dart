import 'package:equatable/equatable.dart';

abstract class DashboardScreenEvent extends Equatable {
  const DashboardScreenEvent();
}

class SetHomeScreen extends DashboardScreenEvent {
  final int index;

  const SetHomeScreen(this.index);

  @override
  List<Object?> get props => [index];
}
