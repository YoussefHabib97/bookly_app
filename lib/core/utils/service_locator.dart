import 'package:get_it/get_it.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService());

  getIt.registerSingleton<HomeRepositoryImplementation>(
    HomeRepositoryImplementation(getIt.get<ApiService>()),
  );
}
