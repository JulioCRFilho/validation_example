import 'package:flutter/cupertino.dart';
import 'package:validation_poc/model.dart';
import 'package:validation_poc/repository.dart';
import 'package:validation_poc/request.dart';

class Validation {
  static void validate() {
    Request.fakeGet();

    StreamBuilder<ModelRequest>(
      stream: Repository.controller.stream,
      builder: (_, snap) {

        final result = snap.data;
        print('request type: ${result.runtimeType}');

        if (result is RequestFailure) {
          //todo: Tratamento para falha
        } else {
          //todo: Tratamento para sucesso
        }

        return Container();
      },
    );
  }
}
