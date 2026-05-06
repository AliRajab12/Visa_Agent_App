import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/data/payment_profile.dart';
part 'payment_state.freezed.dart';

@freezed
class PaymentScreenState with _$PaymentScreenState {
  const factory PaymentScreenState({
    @Default(false) bool loading,
    @Default([]) List<PaymentProfile> paymentProfiles,
    @Default(null) Object? error,
  }) = _PaymentScreenState;

  factory PaymentScreenState.initial() => const PaymentScreenState();

  factory PaymentScreenState.error(Object error) =>
      PaymentScreenState(error: error);
}
