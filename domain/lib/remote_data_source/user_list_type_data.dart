

import 'package:domain/api_services/api_url.dart';
import 'package:domain/api_services/app_url.dart';
import 'package:domain/api_services/methods.dart';
import 'package:domain/user_model/data_list.dart';

import '../controller/base_controller.dart';

class UserListTypeData extends BaseController{

   UserListTypeData();

   Future<DataList> getDataDetails() async {
    const String url = "${ApiUrl.BASE_URL}+ ${AppUrl.login}";

    final map = Map<String, dynamic>();
    final queryParams = Map<String, dynamic>();

    try {
      final response = await restClient!.request(url, Method.GET, map, queryParams);
      return DataList.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<DataList>> getUserList() {
    // TODO: implement getUserList
    throw UnimplementedError();
  }


}