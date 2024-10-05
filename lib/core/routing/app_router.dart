import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gusteau/core/di/dependency_injection.dart';
import 'package:gusteau/core/routing/routes.dart';
import 'package:gusteau/features/auth/logic/cubits/signin/signin_cubit.dart';
import 'package:gusteau/features/auth/logic/cubits/signup/signup_cubit.dart';
import 'package:gusteau/features/auth/screens/sign_in_screen.dart';
import 'package:gusteau/features/auth/screens/sign_up_screen.dart';
import 'package:gusteau/features/auth/screens/verification_code_screen.dart';
import 'package:gusteau/features/layout/screens/layout_screen.dart';
import 'package:gusteau/features/onboard/screens/onboard_screen.dart';
import 'package:gusteau/features/splash/screens/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardScreen(),
        );
      case Routes.signinScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: getIt<SigninCubit>(),
            child: const SignInScreen(),
          ),
        );
      case Routes.verificationCodeScreen:
        return MaterialPageRoute(
          builder: (_) => const VerificationCodeScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: getIt<SignupCubit>(),
              child: const SignUpScreen()),
        );
      case Routes.layout:
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(),
        );
      default:
        return null;
    }
  }
}
