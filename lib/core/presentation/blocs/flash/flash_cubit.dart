import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'flash_state.dart';
part 'flash_cubit.freezed.dart';

@injectable
class FlashCubit extends Cubit<FlashState> {
  FlashCubit() : super(const FlashState.disappeared());

  FutureOr<void> displayFlash(String message) async {
    emit(FlashState.appeared(message));
    emit(const FlashState.disappeared());
    // await Future<dynamic>.delayed(const Duration(se));
  }
}
