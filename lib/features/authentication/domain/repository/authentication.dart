import 'package:productive/core/failure/failure.dart';
import 'package:productive/features/authentication/domain/entity/authenticated_user.dart';

import '../../../../core/either/either.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, AuthenticatedUserEntity>> getUser();

  Future<Either<Failure, AuthenticatedUserEntity>> login (String email, String paswsword);

  Future<Either<Failure, void>>logout();

  Future<Either<Failure, void>> signUp();
}