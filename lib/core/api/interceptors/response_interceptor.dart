


import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../shared/utils/common_widget.dart';
import '../../models/error_model.dart';

void responseInterceptor(Response response, ResponseInterceptorHandler handler)  async {
  EasyLoading.dismiss();
  responseLogger(response);
  if (response.statusCode != 200 && response.statusCode != 201) {
    handleErrorStatus(response);
    return;
  }
  handler.next(response); // Continue with the response

}


void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      final message = ErrorResponse.fromJson(response.data);
      CommonWidget.toast(message.error);
      break;

    case 500:
      CommonWidget.toast("Something went wrong");
      break;
    default:
  }
}

void responseLogger(Response response) {
  debugPrint('Status Code: ${response.statusCode}\n');
  debugPrint('Data: ${response.data ?? ''}');
}
