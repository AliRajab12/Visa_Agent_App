import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:visa_agent_app/core/main_router.dart';
import 'package:visa_agent_app/core/service_locator.dart';
import 'package:visa_agent_app/core/theme/visa_agent_theme.dart';
import 'package:visa_agent_app/core/widgets/phoenix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'utils/size_utils.dart';
import 'package:country_picker/country_picker.dart';

class VisaAgentApp extends StatelessWidget {
  VisaAgentApp({super.key});

  final _mainRouter = locator<MainRouter>();
  final _themeKey = locator<GlobalKey<visa_agentThemeState>>();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return Phoenix(
          child: visa_agentTheme(
        key: _themeKey,
        builder: (BuildContext context, ThemeData themeData) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'visa_agent',
            theme: themeData,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              CountryLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            routerDelegate: _mainRouter.delegate(),
            routeInformationParser: _mainRouter.defaultRouteParser(),
          );
        },
      ));
    });
  }
}
