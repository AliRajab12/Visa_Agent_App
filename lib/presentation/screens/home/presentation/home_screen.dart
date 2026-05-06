import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visa_agent_app/core/main_router.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/core/theme/svg_images.dart';
import 'package:visa_agent_app/presentation/common/widgets/custom_app_bar.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/widgets/visa_app_list.dart';
import 'widgets/apps_horizontal_filter.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
            title: '',
            leading: Container(
              margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 13),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade600)),
              child: IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                onPressed: () {
                  locator<MainRouter>().navigate(const ChatScreenRoute());
                },
              ),
            ),
            onBackButtonPressed: () {},
            action: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade600)),
              child: IconButton(
                icon: SvgPicture.asset(SvgImages.notificationIcon),
                onPressed: () {
                  locator<MainRouter>()
                      .navigate(const NotificationListScreenRoute());
                },
              ),
            ),
            onHomeButtonPressed: () {},
          ),
          body: const Column(
            children: [
              SizedBox(
                height: 55,
              ),
              ApplicationsHorizontalFilter(),
              VisaApplicationList()
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 55),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)),
            child: const Center(
                child: Text(
              "Brand\nlogo",
              textAlign: TextAlign.center,
            )),
          ),
        )
      ],
    );
  }
}
