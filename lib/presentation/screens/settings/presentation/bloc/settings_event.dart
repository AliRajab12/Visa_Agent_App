import 'package:equatable/equatable.dart';

abstract class SettingsScreenEvent extends Equatable {
  const SettingsScreenEvent();
}

class FetchSettingsEvent extends SettingsScreenEvent {
  const FetchSettingsEvent();

  @override
  List<Object?> get props => [];
}

class ChangeNotificationStatusEvent extends SettingsScreenEvent {
  final bool value;

  const ChangeNotificationStatusEvent(this.value);

  @override
  List<Object?> get props => [value];
}

class ChangeShiftStatusEvent extends SettingsScreenEvent {
  final bool value;
  final DateTime dateTime;

  const ChangeShiftStatusEvent({required this.value, required this.dateTime});

  @override
  List<Object?> get props => [value, dateTime];
}
