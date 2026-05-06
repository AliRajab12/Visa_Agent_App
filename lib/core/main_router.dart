import 'package:auto_route/auto_route.dart';
import 'package:visa_agent_app/presentation/screens/agency_info/presentation/agency_info.dart';
import 'package:visa_agent_app/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/home_screen.dart';
import 'package:visa_agent_app/presentation/screens/launch/launch_screen.dart';
import 'package:visa_agent_app/presentation/screens/login/login_screen.dart';
import 'package:visa_agent_app/presentation/screens/login/logout_screen.dart';
import 'package:visa_agent_app/presentation/screens/login/phonetwilio/somiphonelogin.dart';
import 'package:visa_agent_app/presentation/screens/login/phonetwilio/somiphoneverify.dart';
import 'package:visa_agent_app/presentation/screens/login/reset_password/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:visa_agent_app/presentation/screens/notification/presentation/screens/notification_list_screen.dart';
import 'package:visa_agent_app/presentation/screens/past_applications/presentation/previous_visa_app_screen.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/presentation/payment_screen.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/presentation/wallet_screen.dart';
import 'package:visa_agent_app/presentation/screens/statistics/statistics_screen.dart';
import '../presentation/screens/chat/chat_message_screen.dart';
import '../presentation/screens/chat/chat_screen.dart';
import '../presentation/screens/home/data/models/visa_application.dart';
import '../presentation/screens/home/presentation/features/visa_app_details/presentation/visa_application_details_screen.dart';
import '../presentation/screens/settings/presentation/language_screen.dart';
import '../presentation/screens/settings/presentation/settings_screen.dart';

part 'main_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route,Screen',
)
class MainRouter extends _$MainRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: LaunchScreenRoute.page),
    CustomRoute(
        path: '/login',
        page: LoginScreenRoute.page,
        durationInMilliseconds: 700,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    AutoRoute(path: '/reset-password/*', page: ResetPasswordScreenRoute.page),
    AutoRoute(page: LogoutScreenRoute.page),
    CustomRoute(
        path: '/home',
        page: HomeScreenRoute.page,
        durationInMilliseconds: 600,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/notification',
        page: NotificationListScreenRoute.page,
        durationInMilliseconds: 600,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/home',
        page: HomeScreenRoute.page,
        durationInMilliseconds: 600,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/previous-visa-apps',
        page: PrevioussApplicationScreenRoute.page,
        durationInMilliseconds: 600,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/chat',
        page: ChatScreenRoute.page,
        durationInMilliseconds: 700,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/chat-message',
        page: ChatMessageScreenRoute.page,
        durationInMilliseconds: 700,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/supported-languages',
        page: LanguageScreenRoute.page,
        durationInMilliseconds: 500,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/payment',
        page: PaymentScreenRoute.page,
        durationInMilliseconds: 500,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/wallet',
        page: WalletScreenRoute.page,
        durationInMilliseconds: 500,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/dashboard',
        page: DashboardScreenRoute.page,
        durationInMilliseconds: 600,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/phoneverify',
        page: SomiPhoneVerifyRoute.page,
        durationInMilliseconds: 600,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/somi-phone-login',
        page: SomiPhoneLoginRoute.page,
        durationInMilliseconds: 600,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        path: '/visa-application-details',
        page: VisaApplicationDetailsScreenRoute.page,
        durationInMilliseconds: 400,
        transitionsBuilder: TransitionsBuilders.slideLeft),
    CustomRoute(
        path: '/agency-info',
        page: AgencyInfoRoute.page,
        durationInMilliseconds: 400,
        transitionsBuilder: TransitionsBuilders.slideLeft),
  ];
}
