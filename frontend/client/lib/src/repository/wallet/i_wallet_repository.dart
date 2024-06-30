import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';

abstract interface class IWalletRepository {
  Future<Either<Failure, GetWalletsResponse>> list([String query = '']);
}
