import 'dart:convert';

import 'package:validation_poc/model.dart';
import 'package:validation_poc/repository.dart';

class Request {
  static void fakeGet() {
    var result = "{\"status\": 200, \"message\": \"some fake message\"}";
    //fake request

    var json = jsonDecode(result);

    Repository.controller.sink.add(
      json['status'] == 200
          ? RequestSuccess(json['message'])
          : RequestFailure(json['message']),
    );
  }
}
