import 'package:flutter/cupertino.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/l10n/l10n.dart';

mixin ErrorMessageHandler {
  void handleError(BuildContext context, Failure failure) {
    final l10n = context.l10n;
    failure.when(
      remoteConfigFailure: () => context.displayFlash(l10n.remoteConfigFailure),
      preferenceFailure: () => context.displayFlash(l10n.preferenceFailure),
      locationFailure: () => context.displayFlash(l10n.locationFailure),
      locationPermissionFailure: () =>
          context.displayFlash(l10n.locationPermissionFailure),
      remoteFailure: () => context.displayFlash(l10n.remoteFailure),
    );
  }
}
