import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/core/widgets/custom_text_field.dart';
import 'package:visa_agent_app/presentation/common/widgets/custom_rounded_button.dart';
import 'package:visa_agent_app/presentation/screens/agency_info/presentation/widgets/employees_section.dart';

import '../../../../core/service_locator.dart';
import '../../login/login_cubit.dart';
import 'bloc/agency_info_bloc.dart';
import 'bloc/agency_info_state.dart';

@RoutePage()
class AgencyInfo extends StatefulWidget {
  const AgencyInfo({super.key});

  @override
  State<AgencyInfo> createState() => _AgencyInfoState();
}

class _AgencyInfoState extends State<AgencyInfo> {
  final cubit = locator<LoginCubit>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agency Info'),
        centerTitle: true,
        leading: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 16, top: 16, bottom: 6),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade600)),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.grey.shade600,
                size: 16,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomRoundedButton(
          text: 'Save',
          pressed: () {
            cubit.proceedToSomiHomeScreen();
          },
        ),
      ),
      body: BlocBuilder<AgencyInfoScreenBloc, AgencyInfoScreenState>(
          bloc: locator<AgencyInfoScreenBloc>(),
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
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
                    const SizedBox(
                      height: 16,
                    ),
                    const EmployeesSection()
                  ],
                ),
              ),
            );
          }),
    );
  }
}
