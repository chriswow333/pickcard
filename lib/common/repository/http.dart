import 'package:dio/dio.dart';
import 'package:logger/logger.dart';



const BASE_URL = String.fromEnvironment("BASE_URL", defaultValue: "http://localhost:8080/api/v1");

class HttpService {
  late Dio _dio;

  final logger = Logger();

  HttpService() {

    logger.i(BASE_URL);

    _dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ));

    initializeInterceptors();
  }

  Future<Response> _request(String path, {required String method, dynamic data}) async {
    Response response;
    try {
      response = await _dio.request(path, options: Options(method: method), data:data);
    } on DioError catch (e) {
      logger.e(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  Future<Response> get(String path) async {
    return _request(path, method: 'get');
  }

  Future<Response> post(String path, {required dynamic data}) async {
    return _request(path, method: 'post', data:data);
  }
  

  initializeInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          logger.i("${options.method} ${options.path}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioError e, handler) {
          return handler.next(e);
        },
      ),
    );
  }
}