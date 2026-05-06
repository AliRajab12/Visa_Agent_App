import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/presentation/widgets/payment_profile_card.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/bloc/wallet_bloc.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/bloc/wallet_state.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/presentation/widgets/wallet_profile_card.dart';

@RoutePage()
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wallet',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<WalletScreenBloc, WalletScreenState>(
          bloc: locator<WalletScreenBloc>(),
          builder: (context, state) {
            if (state.loading) {
              return ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) =>
                    Shimmer.fromColors(
                  baseColor: Theme.of(context).primaryColor.withOpacity(0.03),
                  highlightColor: Theme.of(context).colorScheme.background,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    color: Colors.grey,
                    width: MediaQuery.sizeOf(context).width,
                    height: 150,
                  ),
                ),
              );
            } else if (state.walletProfile != null) {
              return ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  WalletProfileCard(
                      earnings: state.walletProfile?.totalEarnings ?? "",
                      cardColor: Theme.of(context).primaryColor,
                      title: "Total Earnings"),
                  WalletProfileCard(
                      earnings: state.walletProfile?.thisMonthEarning ?? "",
                      cardColor: Colors.greenAccent,
                      title: "This Month Earnings"),
                  WalletProfileCard(
                      earnings: state.walletProfile?.thisWeekEarning ?? "",
                      cardColor: Colors.orangeAccent,
                      title: "This Week Earnings")
                ],
              );
            } else {
              return const Center(child: Text("No data"));
            }
          }),
    );
  }
}
