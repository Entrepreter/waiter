import 'package:dakiya/injector.dart';
import 'package:dakiya/utils/rest_client.dart';

class RequestController{

  Future<dynamic> makeRequest(String url) async{
    var response  =await  getIt.get<RestClient>().makeGetRequest(url);
    return response;
  }


}