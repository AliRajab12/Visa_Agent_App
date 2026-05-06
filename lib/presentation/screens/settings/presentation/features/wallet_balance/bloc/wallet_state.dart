import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/data/wallet_profile.dart';
part 'wallet_state.freezed.dart';

@freezed
class WalletScreenState with _$WalletScreenState {
  const factory WalletScreenState({
    @Default(false) bool loading,
    WalletProfile? walletProfile,
    @Default(null) Object? error,
  }) = _WalletScreenState;

  factory WalletScreenState.initial() => const WalletScreenState();

  factory WalletScreenState.error(Object error) =>
      WalletScreenState(error: error);
}
