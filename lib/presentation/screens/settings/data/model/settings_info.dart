import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_info.freezed.dart';
part 'settings_info.g.dart';

@freezed
class SettingsInfo with _$SettingsInfo {
  factory SettingsInfo({
    @Default('') String agencyLogo,
    @Default('') String agencyName,
    @Default('') String joiningDate,
    @Default(false) bool notifications,
    @Default(false) bool shift,
  }) = _SettingsInfo;

  factory SettingsInfo.fromJson(Map<String, dynamic> json) =>
      _$SettingsInfoFromJson(json);
}
