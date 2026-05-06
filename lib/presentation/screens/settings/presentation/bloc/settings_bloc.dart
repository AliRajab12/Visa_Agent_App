import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/bloc/settings_event.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/bloc/settings_state.dart';

import '../../data/model/settings_info.dart';

class SettingsScreenBloc
    extends Bloc<SettingsScreenEvent, SettingsScreenState> {
  SettingsScreenBloc() : super(const SettingsScreenState()) {
    on<FetchSettingsEvent>((event, emit) async {
      emit(state.copyWith(loading: true));
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(
          settingsInfo: SettingsInfo(
              notifications: false,
              joiningDate: '16-01-2024',
              agencyName: 'Agency name',
              agencyLogo: 'images/agency.png')));
      emit(state.copyWith(loading: false));
    });
    on<ChangeNotificationStatusEvent>((event, emit) async {
      emit(state.copyWith(
          settingsInfo: state.settingsInfo?.copyWith(
        notifications: event.value,
      )));
    });
    on<ChangeShiftStatusEvent>((event, emit) async {
      emit(state.copyWith(
          settingsInfo: state.settingsInfo?.copyWith(
        shift: event.value,
      )));
    });
  }
}
