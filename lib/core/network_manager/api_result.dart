import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error_handler.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}


// this file instead of Either<left/failure, right/success>
// freezed pckg will generate this code of success and failure