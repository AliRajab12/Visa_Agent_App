import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/core/theme/svg_images.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/home_screen.dart';
import 'package:visa_agent_app/presentation/screens/past_applications/presentation/previous_visa_app_screen.dart';
import 'package:visa_agent_app/presentation/screens/statistics/statistics_screen.dart';
import '../settings/presentation/settings_screen.dart';
import 'bloc/dashboard_bloc.dart';
import 'bloc/dashboard_event.dart';
import 'bloc/dashboard_state.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  final screens = const [
    HomeScreen(),
    PrevioussApplicationScreen(),
    StatisticsScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final bloc = locator<DashboardScreenBloc>();
    return BlocBuilder<DashboardScreenBloc, DashboardScreenState>(
      bloc: bloc,
      builder: (context, state) => Scaffold(
        body: screens[state.index],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            bloc.add(SetHomeScreen(index));
          },
          currentIndex: state.index,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            const BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgImages.documentsIcon,
                    color: Theme.of(context).primaryColor),
                label: "Previous Applications",
                icon: SvgPicture.asset(SvgImages.documentsIcon,
                    color: Colors.grey)),
            const BottomNavigationBarItem(
                label: "Statistics", icon: Icon(Icons.bar_chart_rounded)),
            const BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
