import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handleError(dynamic error) {
    if (error is DioException) {
      return _handleDioError(error);
    } else {
      return ApiErrorModel(
        statusCode: 500,
        message: 'لا يوجد اتصال بالإنترنت، يرجى التحقق من الشبكة',
      );
    }
  }

  static ApiErrorModel _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(
          statusCode: 408,
          message: 'انتهت مهلة الطلب، يرجى التحقق من اتصالك بالإنترنت',
        );
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response!);
      case DioExceptionType.cancel:
        return ApiErrorModel(statusCode: 499, message: 'تم إلغاء الطلب');
      case DioExceptionType.connectionError:
        return ApiErrorModel(
          statusCode: 499,
          message: 'لا يوجد اتصال بالإنترنت، يرجى التحقق من الشبكة',
        );
      case DioExceptionType.unknown:
        return ApiErrorModel(statusCode: 500, message: 'حدث خطأ غير متوقع');
      default:
        return ApiErrorModel(
          statusCode: 503,
          message: 'لا يوجد اتصال بالإنترنت، يرجى التحقق من الشبكة',
        );
    }
  }

  static ApiErrorModel _handleBadResponse(Response response) {
    switch (response.statusCode) {
      case 400:
        return ApiErrorModel(
          statusCode: 400,
          message:
              'عذرًا، هذا البريد الإلكتروني مستخدم بالفعل. يرجى استخدام بريد إلكتروني آخر',
        );
      case 401:
        return ApiErrorModel(
          statusCode: 401,
          message:
              'البريد الإلكتروني أو كلمة المرور غير صحيحة. الرجاء المحاولة مرة آخرى',
        );
      case 403:
        return ApiErrorModel(
          statusCode: 403,
          message: 'ممنوع، لا تملك صلاحية الوصول.',
        );
      case 404:
        return ApiErrorModel(statusCode: 404, message: 'المورد غير موجود');
      case 500:
        return ApiErrorModel(
          statusCode: 500,
          message: 'خطأ داخلي في الخادم، يرجى المحاولة لاحقًا',
        );
      case 503:
        return ApiErrorModel(
          statusCode: 503,
          message: 'الخدمة غير متوفرة حاليًا، يرجى المحاولة لاحقًا',
        );
      default:
        return ApiErrorModel(
          statusCode: response.statusCode ?? 500,
          message: 'حدث خطأ أثناء معالجة الطلب',
        );
    }
  }
}
