import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:weather/l10n/l10n.dart';

class StatusText extends StatelessWidget {
  const StatusText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocSelector<SplashCubit, SplashState, SplashStatus>(
      selector: (state) => state.status,
      builder: (context, status) {
        switch (status) {
          case SplashStatus.fetchApiKey:
            return _TextStatus(status: l10n.splashGetApiKey);
          case SplashStatus.fetchApiUrl:
            return _TextStatus(status: l10n.splashGetApiUrl);
          case SplashStatus.saveApiKey:
            return _TextStatus(status: l10n.splashSaveApiKey);
          case SplashStatus.saveApiUrl:
            return _TextStatus(status: l10n.splashSaveApiUrl);
          case SplashStatus.started:
            return _TextStatus(status: l10n.splashInitializing);
          case SplashStatus.done:
            return _TextStatus(status: l10n.done);
        }
      },
    );
  }
}

class _TextStatus extends StatelessWidget {
  const _TextStatus({required this.status, Key? key}) : super(key: key);
  final String status;
  @override
  Widget build(BuildContext context) {
    return Text(
      status,
      style: context.theme.textTheme.titleMedium,
    );
  }
}
