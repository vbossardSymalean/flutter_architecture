import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/error/failures.dart';

// Permet de gérer les types avant des les  envoyés à la couche Domain.
class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      final integerFomatted = int.parse(str);
      if (integerFomatted  < 0) throw FormatException();
      return Right(integerFomatted);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {}
