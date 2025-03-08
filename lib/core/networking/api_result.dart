import 'package:mentorea_mobile_app/core/networking/api_error_model.dart';

abstract class ApiResult<T> {
  const ApiResult();
  factory ApiResult.success(T data) = Success<T>;
  factory ApiResult.failure(ApiErrorModel error) = Failure<T>;
}

class Success<T> extends ApiResult<T> {
  final T data;
  const Success(this.data);
}

class Failure<T> extends ApiResult<T> {
  final ApiErrorModel error;
  const Failure(this.error);
}
