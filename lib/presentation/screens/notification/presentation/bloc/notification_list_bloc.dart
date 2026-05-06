import 'package:bloc/bloc.dart';
import 'package:visa_agent_app/core/services/user_service.dart';
import 'package:visa_agent_app/presentation/screens/notification/presentation/bloc/notification_list_state.dart';
import 'notification_list_event.dart';

class NotificationListBloc
    extends Bloc<NotificationListEvent, NotificationListState> {
  final UserService userService;
  NotificationListBloc({required this.userService})
      : super(const NotificationListState()) {
    on<FetchNotificationList>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      await Future.delayed(const Duration(seconds: 3));
      try {
        final notificationList = await userService.getNotificationList();
        // results
        emit(state.copyWith(notifications: notificationList));
      } catch (e) {
        emit(state.copyWith(error: e));
      }
      emit(state.copyWith(loading: false));
    });
  }
}
