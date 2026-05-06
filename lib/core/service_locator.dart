import 'package:local_auth/local_auth.dart';
import 'package:visa_agent_app/core/main_router.dart';
import 'package:visa_agent_app/core/network/network_config.dart';
import 'package:visa_agent_app/core/repos/auth_data_repo.dart';
import 'package:visa_agent_app/core/repos/user_prefs.dart';
import 'package:visa_agent_app/core/services/auth/auth_service.dart';
import 'package:visa_agent_app/core/services/opportunity_service.dart';
import 'package:visa_agent_app/core/services/security_provider.dart';
import 'package:visa_agent_app/core/services/user_service.dart';
import 'package:visa_agent_app/core/services/user_visa_services.dart';
import 'package:visa_agent_app/core/theme/visa_agent_theme.dart';
import 'package:visa_agent_app/core/utils/url_launcher.dart';
import 'package:visa_agent_app/presentation/screens/dashboard/bloc/dashboard_bloc.dart';
import 'package:visa_agent_app/presentation/screens/home/bloc/home_bloc.dart';
import 'package:visa_agent_app/presentation/screens/home/bloc/home_event.dart';
import 'package:visa_agent_app/presentation/screens/launch/launch_cubit.dart';
import 'package:visa_agent_app/presentation/screens/login/forgot_password/forgot_password_cubit.dart';
import 'package:visa_agent_app/presentation/screens/login/login_cubit.dart';
import 'package:visa_agent_app/presentation/screens/login/reset_password/reset_password_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:visa_agent_app/presentation/screens/notification/presentation/bloc/notification_list_bloc.dart';
import 'package:visa_agent_app/presentation/screens/past_applications/bloc/previous_visa_app_bloc.dart';
import 'package:visa_agent_app/presentation/screens/past_applications/bloc/previous_visa_app_event.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/bloc/payment_bloc.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/bloc/payment_event.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/bloc/wallet_bloc.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/wallet_balance/bloc/wallet_event.dart';

import '../presentation/screens/agency_info/presentation/bloc/agency_info_bloc.dart';
import '../presentation/screens/settings/presentation/bloc/settings_bloc.dart';
import '../presentation/screens/settings/presentation/bloc/settings_event.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  /// ---- Services ----

  locator.registerSingleton<AuthService>(AuthService());

  locator.registerSingleton<NetworkProvider>(NetworkProvider());

  locator.registerLazySingleton<OpportunityService>(
      () => OpportunityService(locator<NetworkProvider>()));

  locator.registerSingleton<SecurityProvider>(SecurityProvider());

  locator
      .registerSingleton<UserService>(UserService(locator<NetworkProvider>()));

  locator.registerSingleton<UserVisaService>(
      UserVisaService(locator<NetworkProvider>()));
  locator.registerSingleton<LocalAuthentication>(LocalAuthentication());

  /// ---- Repos ----

  locator.registerSingleton<AuthDataRepo>(AuthDataRepo());

  // locator.registerSingleton<UserRepo>(UserRepo());

  /// ---- BLoCs/Cubits ----

  locator.registerFactory<ForgotPasswordCubit>(
      () => ForgotPasswordCubit(locator<AuthService>()));

  locator.registerFactory<LaunchCubit>(
    () => LaunchCubit(
        locator<AuthDataRepo>(), locator<MainRouter>(), locator<AuthService>()),
  );

  locator.registerFactory<LoginCubit>(
    () => LoginCubit(
        locator<AuthService>(), locator<AuthDataRepo>(), locator<MainRouter>()
        // locator<SsoAuthenticator>(),
        ),
  );

  locator.registerFactory<ResetPasswordCubit>(
    () => ResetPasswordCubit(
      locator<AuthService>(),
      locator<AuthDataRepo>(),
      locator<MainRouter>(),
    ),
  );

  /// ---- Other ----

  locator.registerLazySingleton<CacheManager>(() => DefaultCacheManager());

  locator.registerFactory<ImagePicker>(() => ImagePicker());

  locator.registerSingleton(MainRouter());

  locator.registerSingleton<GlobalKey<visa_agentThemeState>>(
      GlobalKey<visa_agentThemeState>());

  // locator.registerFactory<AppLocalizations>(
  //     () => AppLocalizations.delegate.current);

  locator.registerSingleton<UserPrefs>(UserPrefs());
  locator.registerSingleton<UrlLauncher>(UrlLauncher());
  locator
      .registerLazySingleton<DashboardScreenBloc>(() => DashboardScreenBloc());

  locator.registerLazySingleton<AgencyInfoScreenBloc>(
      () => AgencyInfoScreenBloc());
  locator.registerLazySingleton<HomeScreenBloc>(
      () => HomeScreenBloc()..add(const FetchVisaAppsEvent()));
  locator.registerLazySingleton<SettingsScreenBloc>(
      () => SettingsScreenBloc()..add(const FetchSettingsEvent()));
  locator.registerLazySingleton<NotificationListBloc>(
      () => NotificationListBloc(userService: locator<UserService>()));
  locator.registerLazySingleton<PreviousApplicationBloc>(() =>
      PreviousApplicationBloc(userService: locator<UserService>())
        ..add(const FetchPreviousApplication()));
  locator.registerLazySingleton<PaymentScreenBloc>(() =>
      PaymentScreenBloc(userService: locator<UserService>())
        ..add(const FetchPaymentProfilesEvent()));
  locator.registerLazySingleton<WalletScreenBloc>(() =>
      WalletScreenBloc(userService: locator<UserService>())
        ..add(const FetchWalletProfileEvent()));
  locator.registerSingletonAsync<PackageInfo>(
      () async => PackageInfo.fromPlatform());
}
