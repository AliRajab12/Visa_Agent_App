import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:visa_agent_app/core/theme/colors.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/widgets/setting_row.dart';

import '../../../../core/main_router.dart';
import '../../../../core/service_locator.dart';
import 'bloc/settings_bloc.dart';

import 'bloc/settings_event.dart';
import 'bloc/settings_state.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsScreenBloc, SettingsScreenState>(
        bloc: locator<SettingsScreenBloc>(),
        builder: (context, state) {
          if (state.loading) {
            return const Center(
              child: SpinKitFadingCube(
                color: SomiColors.blue,
                size: 50.0,
              ),
            );
          } else if (state.settingsInfo != null) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 42,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10000),
                      child: Image.asset(
                        state.settingsInfo!.agencyLogo,
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )),
                  Text(
                    state.settingsInfo!.agencyName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                  Text(
                    state.settingsInfo!.joiningDate,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Start the Shift',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        CupertinoSwitch(
                          value: state.settingsInfo!.shift,
                          activeColor: SomiColors.blue,
                          onChanged: (value) {
                            locator<SettingsScreenBloc>().add(
                                ChangeShiftStatusEvent(
                                    value: value, dateTime: DateTime.now()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Container(
                      height: 0.2,
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Notification',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        CupertinoSwitch(
                          value: state.settingsInfo!.notifications,
                          activeColor: SomiColors.blue,
                          onChanged: (value) {
                            locator<SettingsScreenBloc>()
                                .add(ChangeNotificationStatusEvent(value));
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Container(
                      height: 0.2,
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  const SettingRow(
                    title: 'Guid & Tutorials',
                    divider: true,
                  ),
                  SettingRow(
                    title: 'Supported Languages',
                    divider: true,
                    press: () {
                      locator<MainRouter>()
                          .navigate(const LanguageScreenRoute());
                    },
                  ),
                  SettingRow(
                    title: 'Payment',
                    divider: true,
                    press: () {
                      locator<MainRouter>()
                          .navigate(const PaymentScreenRoute());
                    },
                  ),
                  SettingRow(
                    title: 'Wallet Balance',
                    divider: false,
                    press: () {
                      locator<MainRouter>().navigate(const WalletScreenRoute());
                    },
                  ),
                ],
              ),
            );
          } else {
            return const Text("No Settings");
          }
        });
  }
}
