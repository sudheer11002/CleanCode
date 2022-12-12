
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:domain/api_services/api_url.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get_storage/get_storage.dart';

import 'methods.dart';


class RestClient extends GetxService {
  late Dio _dio;
  // String  COOKIES_HEADER = "COOKIES_HEADER";
  final box = GetStorage();

  String aToken = '';

  //this is for header
  static header() => {
    'Content-Type': 'application/json',
  };

   Future<RestClient> init() async {
    _dio = Dio(BaseOptions(baseUrl: ApiUrl.BASE_URL,));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      /*    debugPrint("cookies=============> ${box.read(COOKIES_HEADER)}");
     if(aToken == "" || box.read(COOKIES_HEADER) != null){
        options.headers["cookie"] = box.read(COOKIES_HEADER);
      }else{
        options.headers["cookie"] = aToken;
      }
      */
      debugPrint('REQUEST[${options.method}] => PATH: ${options.path} '
          '=> Request Values: ${options.queryParameters}, => HEADERS: ${options.headers} ');

      _dio.interceptors.requestLock.unlock();
      return handler.next(options);
    }, onResponse: (response, handler) {
      debugPrint('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
      return handler.next(response);
    }, onError: (err, handler) {
      debugPrint('ERROR[${err.response?.statusCode}]');
      return handler.next(err);
    }));
  }

  Future<dynamic> request(
      String url, Method method, Map<String, dynamic> params, Map<String, dynamic> queryParams) async {
    Response response;

    init();

    String baseUrl = "${ApiUrl.BASE_URL}${url}";

    debugPrint("base url ===> $baseUrl,,, $params,,,, $queryParams");
    try {
      if (method == Method.POST) {
        if(queryParams.isNotEmpty){
          response = await _dio.post(baseUrl, data: params,queryParameters: queryParams);
        }else{
          response = await _dio.post(baseUrl, data: params);
        }

      } else if (method == Method.DELETE) {
        response = await _dio.delete(url);
      } else if (method == Method.PATCH) {
        response = await _dio.patch(url);
      } else {
        response = await _dio.get(
          url,
          queryParameters: params,
        );
      }


     /* final cookies = response.headers.map['set-cookie'];
      if(cookies != null){
        if (cookies.isNotEmpty && cookies.length == 2) {
          final authToken = cookies[1].split(';')[0]; //it depends on how your server sending cookie


          aToken = authToken; //saving this to global variable to refresh current api calls to add cookie.
          print("authToken===> $authToken");
          box.write(COOKIES_HEADER, authToken);
        }
      }


      print("cookies here====> $cookies,,,, ${box.read(COOKIES_HEADER)}");


*/
      if (response.statusCode == 200) {


        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something Went Wrong");
      }
    } on SocketException catch(e) {
      throw Exception("No Internet Connection ${e.message}");
    } on FormatException {
      throw Exception("Bad Response Format!");
    } on DioError catch (e){
      throw Exception(e);
    } catch (e) {
      throw Exception("Something Went Wrong $e");
    }
  }
}