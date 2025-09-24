import 'package:fpdart/fpdart.dart';
import 'package:vitae_mobile/core/errors/failure.dart';

typedef TE<R> = TaskEither<Failure, R>;

abstract interface class UseCase<R, P> {
  TE<R> call(P params);
}

class NoParams {
  const NoParams();
}

abstract interface class UseCaseNoParams<R> {
  TE<R> call();
}
