import 'dart:convert';

import 'package:http/http.dart' as http;

mixin HttpRequest {
  bool noMoreData = false;

  /// sends post request and convert that into model and add that in list.
  /// Model constructor must have fromJson method.
  ///```dart
  ///model : (item)=> model.fromJson(item)
  ///```
  ///
  void httpGet({
    String url = '0.0.0.0:8080/home',
    Map<String, dynamic> body,
    model,
    list,
    String limit,
  }) async {
    await http
        .get(
      Uri.parse(url),
    )
        .catchError(
      (onError) {
        print('http step 1 error: $onError');
      },
    ).then(
      (value) {
        var responseBody = jsonDecode(value.body);
        var responseLen = 0;
        if (responseBody['status']) {
          var data = responseBody['data'];
          for (var item in data) {
            list.add(model(item));
            responseLen++;
          }
          if (responseLen < int.parse(limit)) {
            noMoreData = true;
          }
        } else {
          print('post request status : false');
        }
        return list;
      },
    ).catchError((onError) {
      print('http error :  $onError');
    });
  }
}
