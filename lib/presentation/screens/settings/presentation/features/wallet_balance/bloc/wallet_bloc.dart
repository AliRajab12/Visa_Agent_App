import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/core/services/user_service.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/data/wallet_profile.dart';
import 'wallet_event.dart';
import 'wallet_state.dart';

class WalletScreenBloc extends Bloc<WalletScreenEvent, WalletScreenState> {
  final UserService userService;
  WalletScreenBloc({required this.userService})
      : super(const WalletScreenState()) {
    on<FetchWalletProfileEvent>((event, emit) async {
      emit(state.copyWith(
          walletProfile: WalletProfile(
        totalEarnings: "25000 AED",
        thisWeekEarning: "10000 AED",
        thisMonthEarning: "15000 AED",
      )));
    });
  }
}
