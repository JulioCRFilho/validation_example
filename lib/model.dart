class ModelRequest {
  final String data;
  const ModelRequest(this.data);
}

class RequestSuccess extends ModelRequest {
  RequestSuccess(String data) : super(data);
}

class RequestFailure extends ModelRequest {
  RequestFailure(String data) : super(data);
}