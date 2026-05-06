import 'package:visa_agent_app/presentation/screens/notification/data/models/notification.dart'
    as notification;

import '../network/network_config.dart';

class UserService {
  final NetworkProvider network;

  UserService(this.network);

  Future<List<notification.Notification>> getNotificationList(
      {int pageNumber = 0, bool refresh = false}) async {
    // final response = await network
    //     .auth(pageParams: CountSkip(10, pageNumber), forceRefresh: refresh)
    //     .get('/api/v1/user/notifications');
    return [];
  }
}
