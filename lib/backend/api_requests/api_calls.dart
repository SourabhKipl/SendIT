import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LoginApiCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? grantType = 'password',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'loginApi',
      apiUrl: 'http://202.157.76.21:6300/php7.3/senditweb/?oauth=token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'authorization':
            'Basic QWZxTkhQTm9pb21ocEVLYjJ0ZkFGWTEyMkxPMHZsVUM3M2plRnNZUTozcTRhdUw1S1huM3RtaHluc3FMRFVRVER1aWNaQ1lHc1lNZVFvNG9y',
      },
      params: {
        'username': username,
        'password': password,
        'grant_type': grantType,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class SignUpApiCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? userEmail = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "user_email": "${userEmail}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignUpApi',
      apiUrl:
          'http://202.157.76.21:6300/php7.3/senditweb/wp-json/SENDITPackage/SignUp',
      callType: ApiCallType.POST,
      headers: {
        'app_version': '1.0',
      },
      params: {
        'username': username,
        'user_email': userEmail,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetProductCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getProduct',
      apiUrl:
          'http://202.157.76.21:6300/php7.3/senditweb/wp-json/SENDITPackage/getProducts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic productName(dynamic response) => getJsonField(
        response,
        r'''$.data[0].product_name''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class OrderPlaceCall {
  static Future<ApiCallResponse> call({
    String? pickupDate = '',
    String? fullName = '',
    String? contactNumber = '',
    String? streetAddress = '',
    String? officeName = '',
    String? city = '',
    String? zipCode = '',
    String? instructions = '',
    String? pickupMethod = '',
    String? selectedPlan = '',
    String? ccn = '',
    String? ccm = '',
    String? ccy = '',
    String? ccv = '',
    String? payToken = '',
    String? packageInfo = '',
    String? apiKey = '',
  }) {
    final body = '''
{
  "pickupDate": "${pickupDate}",
  "fullName": "${fullName}",
  "contactNumber": "${contactNumber}",
  "streetAddress": "${streetAddress}",
  "officeName": "${officeName}",
  "city": "${city}",
  "zipCode": "${zipCode}",
  "instructions": "${instructions}",
  "pickupMethod": "${pickupMethod}",
  "selectedPlan": "${selectedPlan}",
  "ccn": "${ccn}",
  "ccm": "${ccm}",
  "ccy": "${ccy}",
  "ccv": "${ccv}",
  "payToken": "",
  "packageInfo": []
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Place',
      apiUrl:
          'http://202.157.76.21:6300/php7.3/senditweb/wp-json/SENDITPackage/place_order',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'authorization': 'Bearer ${apiKey}',
      },
      params: {
        'pickupDate': pickupDate,
        'fullName': fullName,
        'contactNumber': contactNumber,
        'streetAddress': streetAddress,
        'officeName': officeName,
        'city': city,
        'zipCode': zipCode,
        'instructions': instructions,
        'pickupMethod': pickupMethod,
        'selectedPlan': selectedPlan,
        'ccn': ccn,
        'ccm': ccm,
        'ccy': ccy,
        'ccv': ccv,
        'payToken': payToken,
        'packageInfo': packageInfo,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetUserDetailCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserDetail',
      apiUrl: 'http://202.157.76.21:6300/php7.3/senditweb?oauth=me',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'authorization': 'Bearer ${apiKey}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class OrderListCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'OrderList',
      apiUrl:
          'http://202.157.76.21:6300/php7.3/senditweb/wp-json/SENDITPackage/Order-list',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'authorization': 'Bearer ${apiKey}',
      },
      params: {},
      returnBody: true,
    );
  }
}
