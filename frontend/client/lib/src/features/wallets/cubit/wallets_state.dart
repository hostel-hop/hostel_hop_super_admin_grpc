part of 'wallets_cubit.dart';



@immutable
sealed class WalletsState {}

final class WalletsLoading extends WalletsState {}

final class WalletsLoaded extends WalletsState {
  final List<Wallet> wallets;

  WalletsLoaded(this.wallets);
}

final class WalletsError extends WalletsState {
  final String message;

  WalletsError(this.message);
}