import 'package:get_it/get_it.dart';
import 'package:gusteau/features/auth/data/repos/signin_repo.dart';
import 'package:gusteau/features/auth/data/repos/signup_repo.dart';
import 'package:gusteau/features/auth/logic/cubits/signin/signin_cubit.dart';

import '../../features/auth/logic/cubits/signup/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo());
  getIt.registerLazySingleton<SignupCubit>(() => SignupCubit(getIt<SignupRepo>()),);
  getIt.registerLazySingleton<SigninRepo>(() => SigninRepo());
  getIt.registerLazySingleton<SigninCubit>(() => SigninCubit(getIt<SigninRepo>()));

}