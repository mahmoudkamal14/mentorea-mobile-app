abstract class ApiResult<T> {
  const ApiResult();
  factory ApiResult.success(T data) = Success<T>;
  factory ApiResult.failure(String error) = Failure<T>;
}

class Success<T> extends ApiResult<T> {
  final T data;
  const Success(this.data);
}

class Failure<T> extends ApiResult<T> {
  final String error;
  const Failure(this.error);
}
