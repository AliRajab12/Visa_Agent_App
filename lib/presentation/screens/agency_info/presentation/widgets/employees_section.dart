import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/presentation/screens/agency_info/presentation/widgets/shift_section.dart';

import '../../../../../core/service_locator.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../bloc/agency_info_bloc.dart';
import '../bloc/agency_info_event.dart';
import '../bloc/agency_info_state.dart';

class EmployeesSection extends StatefulWidget {
  const EmployeesSection({super.key});

  @override
  State<EmployeesSection> createState() => _EmployeesSectionState();
}

class _EmployeesSectionState extends State<EmployeesSection> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgencyInfoScreenBloc, AgencyInfoScreenState>(
        bloc: locator<AgencyInfoScreenBloc>(),
        builder: (context, state) {
          return Column(
            children: [
              state.addEmployee
                  ? InkWell(
                      onTap: () {
                        locator<AgencyInfoScreenBloc>()
                            .add(const ChangeAddEmployeeEvent(false));
                      },
                      child: const Padding(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Icon(Icons.add_circle_outline_rounded),
                            SizedBox(
                              width: 6,
                            ),
                            Text('Add Employee')
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        employeeForm(),
                        state.addEmployee == false
                            ? Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.symmetric(
                                        vertical: 12),
                                    child: Divider(),
                                  ),
                                  employeeForm()
                                ],
                              )
                            : const SizedBox()
                      ],
                    )),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          );
        });
  }

  employeeForm() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                label: 'First name',
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextField(
                label: 'Last name',
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: 'Email',
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: 'Phone',
          textInputType: TextInputType.number,
        ),
        const SizedBox(
          height: 12,
        ),
        const ShiftSection(
          numberEmployee: 0,
        ),
      ],
    );
  }
}
