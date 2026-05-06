import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/presentation/screens/home/bloc/home_bloc.dart';
import 'package:visa_agent_app/presentation/screens/home/bloc/home_state.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/widgets/visa_app_card.dart';

class VisaApplication extends StatelessWidget {
  const VisaApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
        bloc: locator<HomeScreenBloc>(),
        builder: (context, state) {
          if (state.loading) {
            return Expanded(
              child: ListView.builder(
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
              ),
            );
          } else if (state.filteredVisaApplications.isNotEmpty) {
            return Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => VisaAppCard(
                        visaApplication: state.visaApplications[index]),
                    itemCount: state.filteredVisaApplications.length));
          } else {
            return const Text("No applications");
          }
        });
  }
}
