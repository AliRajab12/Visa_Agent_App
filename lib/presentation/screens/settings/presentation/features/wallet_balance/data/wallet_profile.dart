import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallet_profile.freezed.dart';
part 'wallet_profile.g.dart';

@freezed
class WalletProfile with _$WalletProfile {
  factory WalletProfile({
    @Default('') String totalEarnings,
    @Default('') String thisWeekEarning,
    @Default('') String thisMonthEarning,
  }) = _WalletProfile;

  factory WalletProfile.fromJson(Map<String, dynamic> json) =>
      _$WalletProfileFromJson(json);
}
