import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/presentation/blocs/flash/flash_cubit.dart';
import 'package:weather/core/utils/constants.dart';

extension BuildContextX on BuildContext {
  void displayFlash(String message) {
    read<FlashCubit>().displayFlash(message);
  }

  void showSnackbar({
    required String message,
    void Function()? action,
    String? actionText,
  }) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        action: action == null && actionText != null
            ? null
            : SnackBarAction(label: actionText!, onPressed: action!),
      ),
    );
  }
}
