

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../api_services/rest_client.dart';

class BaseController extends GetxController {
  RestClient? restClient;

  @override
  onInit() {
    restClient = RestClient();
    super.onInit();

  }

}