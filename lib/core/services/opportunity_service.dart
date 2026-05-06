import 'package:visa_agent_app/core/network/network_config.dart';

class OpportunityService {
  final NetworkProvider network;

  OpportunityService(this.network);


  Future<void> clearOpportunitiesCache() async {
    await network.clearCache(path: '/api/mobile/learnerhome/opportunities');
  }
}
