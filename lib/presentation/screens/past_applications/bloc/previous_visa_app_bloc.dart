import 'package:bloc/bloc.dart';
import 'package:visa_agent_app/core/services/user_service.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/visa_application.dart';
import 'previous_visa_app_event.dart';
import 'previous_visa_app_state.dart';

class PreviousApplicationBloc
    extends Bloc<PreviousApplicationEvent, PreviousApplicationState> {
  final UserService userService;
  PreviousApplicationBloc({required this.userService})
      : super(const PreviousApplicationState()) {
    on<FetchPreviousApplication>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      await Future.delayed(const Duration(seconds: 3));
      try {
        emit(state.copyWith(
            visaApps: visaApps
                .where((element) => element.status == "completed")
                .toList()));
      } catch (e) {
        emit(state.copyWith(error: e));
      }
      emit(state.copyWith(loading: false));
    });
  }
}
