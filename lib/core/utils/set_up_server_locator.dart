import 'package:dio/dio.dart';
import 'package:fashions/core/utils/api_services.dart';
import 'package:fashions/features/home/data/Repo_imp/home_repo_imp.dart';
import 'package:fashions/features/home/data/data_source/home_local_data_source.dart';
import 'package:fashions/features/home/data/data_source/home_remote_data_source.dart';
import 'package:get_it/get_it.dart';

import '../../features/Auth/data/repo_imp/user_repo_imp.dart';
import '../../features/auth/data/data_source/user_remote_data_source.dart';

final getIt = GetIt.instance;

void setupServesLocator() {
  // api services
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  // user auth
  getIt.registerSingleton<UserRepoImpl>(
    UserRepoImpl(
      userRemoteDataSource:
          UserRemoteDataSourceImpl(apiServices: getIt.get<ApiServices>()),
    ),
  );
  // home
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      homeRemoteDataSource: HomeRemoteDataSourceImp(
        apiServices: getIt.get<ApiServices>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImp(),
    ),
  );
}
