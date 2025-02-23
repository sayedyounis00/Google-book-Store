import 'package:bookly/core/services/api_services.dart';
import 'package:bookly/feature/home/data/Repo/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  //creating an sigletone for aprservice  beacause it repeated
  getIt.registerSingleton<ApiServices>(ApiServices());
  //creating an sigletone for HomeRepoImp  beacause it repeated
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      //getting the Api service instant from get_it to use in
      apiServices: getIt.get<ApiServices>(),
    ),
  );
}
