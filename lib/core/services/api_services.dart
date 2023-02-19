import 'package:dio/dio.dart';

abstract class ApiServices {

ApiServices(this.dio);
final Dio dio;

Future<String> getWeathers();

}