import 'package:dakiya/controllers/requests_controller.dart';
import 'package:dakiya/utils/rest_client.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

init() async {
  GetIt.I.registerSingleton<RequestController>(RequestController());
  GetIt.I.registerSingleton<RestClient>(RestClient());
}
