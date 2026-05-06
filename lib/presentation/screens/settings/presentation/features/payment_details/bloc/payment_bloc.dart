import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/core/services/user_service.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/data/payment_profile.dart';
import 'payment_event.dart';
import 'payment_state.dart';

class PaymentScreenBloc extends Bloc<PaymentScreenEvent, PaymentScreenState> {
  final UserService userService;
  PaymentScreenBloc({required this.userService})
      : super(const PaymentScreenState()) {
    on<FetchPaymentProfilesEvent>((event, emit) async {
      emit(state.copyWith(loading: true));
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(
        paymentProfiles: paymentProfiles,
      ));
      emit(state.copyWith(loading: false));
    });
  }
}
