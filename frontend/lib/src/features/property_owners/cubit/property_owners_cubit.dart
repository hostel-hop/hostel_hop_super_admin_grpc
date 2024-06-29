import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hostel_hop_super_admin/src/generated/property_owners.pb.dart';
import 'package:hostel_hop_super_admin/src/repository/property_owner/property_owner_repository.dart';
import 'package:injectable/injectable.dart';

part 'property_owners_state.dart';

@injectable
class PropertyOwnersCubit extends Cubit<PropertyOwnersState> {
  final PropertyOwnerRepository _repository;

  PropertyOwnersCubit(
    this._repository,
  ) : super(PropertyOwnersLoading()) {
    init();
  }

  Future<void> init() async {
    try {
      final response = await _repository.list();

      emit(PropertyOwnersLoaded(response.owners));
    } catch (e) {
      emit(PropertyOwnersError(e.toString()));
    }
  }
}
