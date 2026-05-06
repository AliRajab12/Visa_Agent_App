import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/bloc/payment_bloc.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/bloc/payment_state.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/presentation/widgets/payment_profile_card.dart';

@RoutePage()
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<PaymentScreenBloc, PaymentScreenState>(
          bloc: locator<PaymentScreenBloc>(),
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
            } else if (state.paymentProfiles.isNotEmpty) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => PaymentProfileCard(
                  paymentProfile: state.paymentProfiles[index],
                ),
                itemCount: state.paymentProfiles.length,
              );
            } else {
              return const Center(child: Text("No applications"));
            }
          }),
    );
  }
}
