import 'package:flutter/material.dart';
import 'package:visa_agent_app/core/theme/colors.dart';
import 'package:visa_agent_app/presentation/screens/statistics/bloc/statistics_screen_bloc.dart';

import 'date.dart';

class FromUntilWidget extends StatefulWidget {
  const FromUntilWidget({super.key});
  @override
  State<FromUntilWidget> createState() => _FromUntilWidgetState();
}

class _FromUntilWidgetState extends State<FromUntilWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'From',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: SomiColors.greyLight),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    'Until',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: SomiColors.greyLight),
                  ),
                ),
              ],
            ),
          ),
          DateWidget(
            bloc: StatisticsScreenBloc(),
          )
        ],
      ),
    );
  }
}
