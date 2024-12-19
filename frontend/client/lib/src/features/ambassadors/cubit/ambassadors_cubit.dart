import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hostel_hop_super_admin/src/generated/ambassador.pb.dart';
import 'package:hostel_hop_super_admin/src/repository/ambassadors/ambassadors_repository.dart';
import 'package:hostel_hop_super_admin/src/repository/ambassadors/i_ambassadors_repository.dart';
import 'dart:html' as html;

import 'package:injectable/injectable.dart';

part 'ambassadors_state.dart';

@injectable
class AmbassadorsCubit extends Cubit<AmbassadorsState> {
  final IAmbassadorsRepository _repository;

  AmbassadorsCubit(
    @Named.from(AmbassadorsRepository) this._repository,
  ) : super(AmbassadorsLoading()) {
    init();
  }

  Future<void> init() async {
    try {
      final result = await _repository.list();

      return result.fold(
        (l) => emit(AmbassadorsError(l.message)),
        (r) => emit(AmbassadorsLoaded(r.referrals)),
      );
    } catch (e) {
      emit(AmbassadorsError(e.toString()));
    }
  }

  Future<void> search(String query) async {
    try {
      final result = await _repository.list(query);

      return result.fold(
        (l) => emit(AmbassadorsError(l.message)),
        (r) => emit(AmbassadorsLoaded(r.referrals)),
      );
    } catch (e) {
      emit(AmbassadorsError(e.toString()));
    }
  }

  Future<void> changeStatus({required String id, required int type}) async {
    try {
      final result = await _repository.changeStatus(id: id, type: type);

      return result.fold((l) => emit(AmbassadorsError(l.message)), (r) {
        emit(AmbassadorsLoading());
        init();
      });
    } catch (e) {
      emit(AmbassadorsError(e.toString()));
    }
  }

  Future<void> generateCsv() async {
    try {
      final result = await _repository.generateBackpackerCsv();

      return result.fold(
        (l) => emit(AmbassadorsError(l.message)),
        (r) async {
          _triggerCsvDownload(Uint8List.fromList(r), "output.csv");
        },
      );
    } catch (e) {
      emit(AmbassadorsError(e.toString()));
    }
  }

  void _triggerCsvDownload(Uint8List csvBytes, String filename) {
    // Create a Blob from the CSV bytes
    final blob = html.Blob([csvBytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Create a link element and simulate a click to download the file
    html.AnchorElement(href: url)
      ..setAttribute("download", filename)
      ..click();

    // Clean up by revoking the object URL
    html.Url.revokeObjectUrl(url);
  }
}
