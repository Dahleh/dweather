import 'package:dartz/dartz.dart';

import '../utils/utlis_const.dart';

abstract class Failure extends Equatable {
  final String message;
  final int statusCode;

  const Failure({required this.message, required this.statusCode});

  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({required super.message, required super.statusCode});
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message, required super.statusCode});
}

class ApiFailure extends Failure {
  const ApiFailure({required super.message, required super.statusCode});
}

Future<Either<ServerFailure, T>> handleDioError<T>(
    Future<T> Function() dioCall) async {
  try {
    final result = await dioCall();
    return Right(result);
  } catch (e) {
    if (e is DioError) {
      if (e.response?.statusCode == 400) {
        final errors = e.response?.data['errors'];
        if (errors != null && errors is Map<String, dynamic>) {
          final errorMessages = errors.values.map((error) {
            if (error is List<dynamic> && error.isNotEmpty) {
              return error[0].toString();
            } else {
              return error.toString();
            }
          }).toList();

          final joinedErrorMessages = errorMessages.join(', ');
          return Left(
              ServerFailure(message: joinedErrorMessages, statusCode: 400));
        } else if (errors == null) {
          // Handle the case when errors is null
          return const Left(ServerFailure(
              message: 'Error with status code 400', statusCode: 400));
        }
      } else {
        // final messages = e.response?.data['returnText'];
        // return Left(ServerFailure(
        //     message: messages ??
        //         LocaleKeys.something_went_wrong_please_try_again.tr(),
        //     statusCode: e.response?.statusCode ?? 500));
        if (e.type == DioExceptionType.connectionError) {
          return Left(ServerFailure(
              message: "Server is down please try again later",
              statusCode: e.response?.statusCode ?? 500));
        } else {
          final messages = e.response?.data['returnText'];
          return Left(ServerFailure(
              message: messages ?? "Somthing went wrong",
              statusCode: e.response?.statusCode ?? 500));
        }
      }
      // Handle the case when response data is null or not of type Map<String, dynamic>
      return Left(ServerFailure(message: e.toString(), statusCode: 500));
    }

    // Handle other exceptions
    return Left(ServerFailure(message: e.toString(), statusCode: 500));
  }
}
