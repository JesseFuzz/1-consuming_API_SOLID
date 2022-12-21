import 'client/response_aux.dart';

abstract class IHttpService {
  Future<ResponseAux> get(String url);
}
