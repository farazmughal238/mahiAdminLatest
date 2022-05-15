import 'package:apisd/ApiServices/Clients/ApiClient.dart';
import 'package:apisd/ApiServices/Clients/IApiClient.dart';
import 'package:apisd/ApiServices/ExternalValues/ExternalValues.dart';
import 'package:apisd/Domain/repo/IRepo.dart';
import 'package:apisd/Mixin/stateBaseMixin.dart';
import 'package:apisd/Utils/overly_utils.dart';
import 'package:apisd/data/LocalDataSource/Storage/IPrefHelper.dart';
import 'package:apisd/data/LocalDataSource/Storage/prefHelper.dart';
import 'package:apisd/data/RemoteDataSource/User/IUserApiService.dart';
import 'package:apisd/data/RemoteDataSource/User/UserApiService.dart';
import 'package:apisd/data/repo_impl/repo_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Services/navigator_service.dart';

var locator = GetIt.instance;

Future<void> setUpLocator() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton<IPrefHelper>(() => PrefHelper(pref: sharedPreferences));
  locator.registerLazySingleton<OverlyHelper>(() => OverlyHelper());
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<IRepo>(() => Repo(iUserApiService: locator()));
  locator.registerLazySingleton<IUserApiService>(() => UserApiService(iApiClient: locator()));
  locator.registerLazySingleton<UserApiService>(() => UserApiService(iApiClient: locator()));
  locator.registerLazySingleton<IApiClient>(() => ApiClient.create(externalValues: ExternalValues(), iPrefHelper: locator()));

}