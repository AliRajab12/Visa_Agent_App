import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/presentation/screens/home/bloc/home_bloc.dart';
import 'package:visa_agent_app/presentation/screens/home/bloc/home_event.dart';
import 'package:visa_agent_app/presentation/screens/home/bloc/home_state.dart';

class ApplicationsHorizontalFilter extends StatelessWidget {
  const ApplicationsHorizontalFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = locator<HomeScreenBloc>();
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      bloc: homeBloc,
      builder: (context, state) {
        List<String> status = ["Pending", "Ongoing", "Completed", "All"];
        if (state.visaApplications.isNotEmpty) {
          status = [
            "Pending (${(state.visaApplications.where((visaApp) => visaApp.status == "pending").length)})",
            "Ongoing (${(state.visaApplications.where((visaApp) => visaApp.status == "ongoing").length)})",
            "Completed (${(state.visaApplications.where((visaApp) => visaApp.status == "completed").length)})",
            "All (${state.visaApplications.length})"
          ];
        }
        return SizedBox(
          height: 75,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: status.length,
              padding: const EdgeInsets.only(left: 5),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (index != state.index) {
                    homeBloc.add(FilterAppsEvent(index));
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: index == state.index
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).primaryColor.withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: index == state.index
                        ? Theme.of(context).primaryColor
                        : Colors.transparent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        status[index],
                        textScaleFactor: 1.1,
                        style: TextStyle(
                          color: index == state.index
                              ? Colors.white
                              : Colors.black,
                          fontWeight: index == state.index
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
