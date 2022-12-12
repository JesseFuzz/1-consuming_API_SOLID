import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  final response = await dio.get('https://api.github.com/users/Flutterando');
  print(response.data);
}
