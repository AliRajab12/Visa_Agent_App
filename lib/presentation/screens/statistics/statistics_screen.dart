import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/core/theme/text_styles.dart';
import 'package:visa_agent_app/presentation/screens/statistics/widgets/date_widget.dart';
import 'package:visa_agent_app/presentation/screens/statistics/widgets/visa_list.dart';
import 'bloc/statistics_screen_bloc.dart';
import 'widgets/apps_horizontal_filter.dart';

@RoutePage()
class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 16,
        titleSpacing: 0,
        centerTitle: true,
        title: const Text(
          "Statistics",
          style: kScreenTitle,
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 25,
          ),
          ApplicationsHorizontalFilter(),
          DateWidget(),
          VisaApplication()
        ],
      ),
    );
  }
}
