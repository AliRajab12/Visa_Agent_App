import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'core/network/network_config.dart';
import 'core/repos/auth_data_repo.dart';
import 'core/repos/user_prefs.dart';
import 'core/service_locator.dart';
import 'core/VisaAgentApp_app.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    if (Platform.isAndroid) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    setupLocator();
    await Hive.initFlutter();
    await locator<UserPrefs>().init();
    await locator<AuthDataRepo>().init();
    await NetworkConfig.init(isNetworkLoggerEnabled: false);
    // runApp(const MaterialApp(
    //     debugShowCheckedModeBanner: false, home: LaunchScreen()));
    runApp(
      VisaAgentApp(),
    );
  }, (exception, stack) {});
  // locator<CrashUtils>().collectDartError(exception, stack));
}
