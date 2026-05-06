import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/core/theme/colors.dart';
import 'package:visa_agent_app/core/theme/text_styles.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/widgets/visa_app_card.dart';
import 'package:visa_agent_app/presentation/screens/past_applications/bloc/previous_visa_app_bloc.dart';
import 'package:visa_agent_app/presentation/screens/past_applications/bloc/previous_visa_app_state.dart';

@RoutePage()
class PrevioussApplicationScreen extends StatelessWidget {
  const PrevioussApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 16,
        titleSpacing: 0,
        centerTitle: true,
        title: const Text(
          "Previous Applications",
          style: kScreenTitle,
        ),
      ),
      body: BlocBuilder<PreviousApplicationBloc, PreviousApplicationState>(
          bloc: locator(),
          builder: (context, state) {
            if (state.loading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              );
            }
            if (state.visaApps.isNotEmpty) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => VisaAppCard(
                  visaApplication: state.visaApps[index],
                ),
                itemCount: state.visaApps.length,
              );
            } else if (state.visaApps.isEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset('images/lottie/no_notification.json'),
                      Text(
                        'You have no previous applications',
                        style: kSectionTitle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          }),
    );
  }
}
