// import 'dart:async';
// import 'dart:io';
//
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
// import 'package:visa_agent_app/core/environment.dart';
// import 'package:visa_agent_app/core/network/network_config.dart';
// import 'package:visa_agent_app/core/repos/auth_data_repo.dart';
// import 'package:visa_agent_app/core/repos/user_prefs.dart';
// import 'package:visa_agent_app/core/repos/user_repo.dart';
// import 'package:visa_agent_app/core/service_locator.dart';
// import 'package:visa_agent_app/core/services/analytics_service.dart';
// import 'package:visa_agent_app/core/utils/device_utils.dart';
// import 'package:visa_agent_app/presentation/screens/launch/launch_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
//
// import 'visa_agent_app.dart';
//
// // ignore: non_constant_identifier_names
// late AppEnvironment Env;
//
// void initApp({AppEnvironment? env}) async {
//   if (env != null) Env = env;
//
//     // Show a simple splash screen while initializing
//     WidgetsFlutterBinding.ensureInitialized();
//     if (Platform.isAndroid) {
//     //  AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
//     }
//     setupLocator();
//
//     await Hive.initFlutter();
//     await locator<UserRepo>().init();
//     await locator<UserPrefs>().init();
//     await locator<AuthDataRepo>().init();
//     await NetworkConfig.init(isNetworkLoggerEnabled: false);
//     await locator<Analytics>().init();
//     await locator<DeviceUtils>().init();
//     //Enable below for push notifications
//     /*bool isNotificationSet = locator<NotificationPrefs>().isNotificationSet;
//     if (isNotificationSet) {
//       await locator<PushNotificationService>().registerPushNotifications();
//     }*/
//     runApp(const MaterialApp(
//         debugShowCheckedModeBanner: false, home: LaunchScreen()));
//     runApp(visa_agentApp(),);
//   }
//
