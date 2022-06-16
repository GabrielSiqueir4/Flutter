 import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

class ApiInterceptor implements InterceptorContract {
  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    return data;
  }

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
   data.headers["Content-Type"] = "application/json";
    return data;
  }
}