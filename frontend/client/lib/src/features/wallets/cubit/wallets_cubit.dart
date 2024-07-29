import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/repository/wallet/i_wallet_repository.dart';
import 'package:hostel_hop_super_admin/src/repository/wallet/wallet_repository.dart';
import 'package:injectable/injectable.dart';

part 'wallets_state.dart';

@injectable
class WalletsCubit extends Cubit<WalletsState> {
  final IWalletRepository _repository;

  WalletsCubit(
    @Named.from(WalletRepository) this._repository,
  ) : super(WalletsLoading()) {
    init();
  }

  Future<void> init() async {
    try {
      final result = await _repository.list();

      return result.fold(
        (l) => emit(WalletsError(l.message)),
        (r) => emit(WalletsLoaded(r.wallets)),
      );
    } catch (e) {
      emit(WalletsError(e.toString()));
    }
  }

  Future<void> search(String query) async {
    try {
      final result = await _repository.list(query);

      return result.fold(
        (l) => emit(WalletsError(l.message)),
        (r) => emit(WalletsLoaded(r.wallets)),
      );
    } catch (e) {
      emit(WalletsError(e.toString()));
    }
  }

  Future<void> updateCredits(
      {required int nonWithdrawableCredits,
      required int withdrawableCredits,
      required String backpackerId}) async {
    try {
      late final withdrawableResult;
      late final nonWithdrawableResult;

      if (withdrawableCredits != 0 && nonWithdrawableCredits != 0) {
        withdrawableResult = await _repository.updateWithdrawableCredits(
            withdrawableCredits: withdrawableCredits,
            backpackerId: backpackerId);
        nonWithdrawableResult = await _repository.updateNonWithdrawableCredits(
            nonWithdrawableCredits: nonWithdrawableCredits,
            backpackerId: backpackerId);
      } else if (withdrawableCredits != 0 && nonWithdrawableCredits == 0) {
        withdrawableResult = await _repository.updateWithdrawableCredits(
            withdrawableCredits: withdrawableCredits,
            backpackerId: backpackerId);
      } else if (withdrawableCredits == 0 && nonWithdrawableCredits != 0) {
        nonWithdrawableResult = await _repository.updateNonWithdrawableCredits(
            nonWithdrawableCredits: nonWithdrawableCredits,
            backpackerId: backpackerId);
      }
      
      

    } catch (e) {
      emit(WalletsError(e.toString()));
    }
  }
}
