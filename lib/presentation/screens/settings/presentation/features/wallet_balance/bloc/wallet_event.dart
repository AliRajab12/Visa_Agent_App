import 'package:equatable/equatable.dart';

abstract class WalletScreenEvent extends Equatable {
  const WalletScreenEvent();
}

class FetchWalletProfileEvent extends WalletScreenEvent {
  const FetchWalletProfileEvent();

  @override
  List<Object?> get props => [];
}
