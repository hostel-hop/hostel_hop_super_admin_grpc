part of 'ambassadors_cubit.dart';


@immutable
sealed class AmbassadorsState {}

final class AmbassadorsLoading extends AmbassadorsState {}

final class AmbassadorsLoaded extends AmbassadorsState {
  final List<Referral> referrals;

  AmbassadorsLoaded(this.referrals);
}

final class AmbassadorsError extends AmbassadorsState {
  final String message;

  AmbassadorsError(this.message);
}