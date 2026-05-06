import 'package:equatable/equatable.dart';

abstract class PaymentScreenEvent extends Equatable {
  const PaymentScreenEvent();
}

class FetchPaymentProfilesEvent extends PaymentScreenEvent {
  const FetchPaymentProfilesEvent();

  @override
  List<Object?> get props => [];
}
