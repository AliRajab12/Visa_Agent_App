import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/settings_info.dart';
part 'settings_state.freezed.dart';

@freezed
class SettingsScreenState with _$SettingsScreenState {
  const factory SettingsScreenState({
    @Default(false) bool loading,
    SettingsInfo? settingsInfo,
    @Default(null) Object? error,
  }) = _SettingsScreenState;

  factory SettingsScreenState.initial() => const SettingsScreenState();

  factory SettingsScreenState.error(Object error) => SettingsScreenState(error: error);
}
