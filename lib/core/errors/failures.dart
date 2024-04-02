import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timed out');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send request timed out');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve request timed out');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response);
      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled');

      case DioExceptionType.connectionError:
        if (dioException.message!.contains('socket exception')) {
          return ServerFailure('No internet connection');
        }
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error.\nPlease try again later.');

      default:
        return ServerFailure(
            'Oops! There was an error.\nPlease try again later.');
    }
    return ServerFailure('Oops! There was an error.\nPlease try again later.');
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          'Your request has not been found.\nPlease try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server erorr\nPlease try again later');
    } else {
      return ServerFailure(
          'Oops! An error has occured.\nPlease try again later.');
    }
  }
}
