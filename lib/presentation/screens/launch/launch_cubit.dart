import 'package:visa_agent_app/core/main_router.dart';
import 'package:visa_agent_app/core/repos/auth_data_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visa_agent_app/core/services/auth/auth_service.dart';

class LaunchCubit extends Cubit<LaunchState> {
  final AuthDataRepo _authRepo;
  final MainRouter _router;
  final AuthService _authService;
  LaunchCubit(this._authRepo, this._router, this._authService)
      : super(LaunchState.loading);

  Future<void> initialize() async {
    emit(LaunchState.loading);

    //Enable during push notifications
    /*bool isNotificationSet = _notificationPrefs.isNotificationSet;
    if (!isNotificationSet) {
      registerPushNotifications();
    }*/

    // Verify the user is authenticated. If not, go to the login screen.
    if (!_authRepo.hasAuth) {
      navigateToLogin();
      return;
    }

    // Check if the user needs to accept the Data Privacy Agreement
    /*if (_userRepo.userPermissions?.ShouldShowDataPrivacyAcceptance == true) {
      String? dpaMessage =
          _userRepo.orgSettings?.DataPrivacyAcceptanceMessage ?? '';
      if (await _router.pushWidget(DataPrivacyAcceptanceScreen(dpaMessage)) !=
          true) {
        logOut();
        return;
      }
    }*/

    // Check if device token exists
    /*bool isTokenAdded = _notificationPrefs.isNotificationTokenAdded;
    if (!isTokenAdded) {
      String deviceToken = _authRepo.notificationToken;
      String platformName = Platform.isAndroid ? 'Android' : 'iOS';

      if (deviceToken.isNotEmpty) {
        try {
          await _userService.registerFirebaseTokenBackend(
              deviceToken, platformName);
          _notificationPrefs.setNotificationTokenAdded(true);
        } catch (e) {
          _notificationPrefs.setNotificationTokenAdded(false);
        }
      }
    }*/

    // Check if the user needs to complete the onboarding process
    /*if (!_userRepo.skipOnboarding && _userRepo.userPermissions?.ShouldShowOnboardingTour == true) {
      await _router.pushWidget(
        const OnboardingScreen(),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return ClipPath(
            clipper: CenterCircleClipper(percent: animation.value),
            child: child,
          );
        },
      );

      // Wait for transition animation
      await Future.delayed(const Duration(seconds: 1));
    }*/

    // Proceed to the dashboard if everything was successful
    navigateToMain();
  }

  void navigateToMain() async {
    await _authService.authenticateUserIdentity().then((value) {
      if (value) {
        _router.replaceAll([const DashboardScreenRoute()]);
      }
    });
  }

  Future<void> navigateToLogin() async {
    await Future.delayed(const Duration(milliseconds: 2800))
        .then((value) => _router.replace(LoginScreenRoute()));
  }
}

enum LaunchState {
  loading,
  commError,
  unknownError,
}
