import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hostel_hop_super_admin/src/generated/property_owners.pb.dart';
import 'package:hostel_hop_super_admin/src/repository/property_owner/i_property_owner_repository.dart';
import 'package:hostel_hop_super_admin/src/repository/property_owner/property_owner_repository.dart';
import 'package:injectable/injectable.dart';

part 'property_owners_state.dart';

@injectable
class PropertyOwnersCubit extends Cubit<PropertyOwnersState> {
  final IPropertyOwnerRepository _repository;

  PropertyOwnersCubit(
    @Named.from(PropertyOwnerRepository) this._repository,
  ) : super(PropertyOwnersLoading()) {
    init();
  }

  Future<void> init() async {
    try {
      final result = await _repository.list();

      return result.fold(
        (l) => emit(PropertyOwnersError(l.message)),
        (r) => emit(PropertyOwnersLoaded(r.owners)),
      );
    } catch (e) {
      emit(PropertyOwnersError(e.toString()));
    }
  }

  Future<void> search(String query) async {
    try {
      final result = await _repository.list(query);

      return result.fold(
        (l) => emit(PropertyOwnersError(l.message)),
        (r) => emit(PropertyOwnersLoaded(r.owners)),
      );
    } catch (e) {
      emit(PropertyOwnersError(e.toString()));
    }
  }

  Future<void> updatePassword({
    required String hostelHopId,
    required String password,
  }) async {
    try {
      final result = await _repository.updatePassword(
        hostelHopId,
        password,
      );

      return result.fold(
        (l) {
          debugPrint(l.message);
        },
        (r) {},
      );
    } catch (e) {
      emit(PropertyOwnersError(e.toString()));
    }
  }
}
