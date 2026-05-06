import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/service_locator.dart';
import '../../../../../core/theme/colors.dart';
import '../bloc/agency_info_bloc.dart';
import '../bloc/agency_info_state.dart';

class ShiftSection extends StatefulWidget {
  final int numberEmployee;
  const ShiftSection({super.key, required this.numberEmployee});

  @override
  State<ShiftSection> createState() => _ShiftSectionState();
}

class _ShiftSectionState extends State<ShiftSection> {
  late String shift;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shift = '';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgencyInfoScreenBloc, AgencyInfoScreenState>(
        bloc: locator<AgencyInfoScreenBloc>(),
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const Text('Shift'),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            shift = state.shifts[index];
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: shift == state.shifts[index]
                                    ? SomiColors.blue
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Center(
                                child: Text(
                                  state.shifts[index],
                                  style: TextStyle(
                                    color: shift == state.shifts[index]
                                        ? Colors.white
                                        : SomiColors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          );
        });
  }
}
