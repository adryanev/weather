import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/app/routes/router.dart';
import 'package:weather/core/presentation/mixins/error_message_handler.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:weather/features/splash/presentation/widgets/status_text.dart';
import 'package:weather/injector.dart';
import 'package:weather/l10n/l10n.dart';

class SplashPage extends StatelessWidget with ErrorMessageHandler {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider(
      create: (context) => getIt<SplashCubit>()..fetchGeocoderKey(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          state.fetchGeocoderKeyOrFailureOption.fold(
            () => null,
            (either) => either.fold(
              (l) => handleError(context, l),
              (r) => context.read<SplashCubit>().saveGeocoderKey(r),
            ),
          );
          state.saveGeocoderKeyOrFailureOption.fold(
            () => null,
            (either) => either.fold(
              (l) => handleError(context, l),
              (r) => context.read<SplashCubit>().fetchApiKey(),
            ),
          );
          state.fetchApiKeyOrFailureOption.fold(
            () => null,
            (either) => either.fold(
              (l) => handleError(context, l),
              (r) => context.read<SplashCubit>().saveApiKey(r),
            ),
          );

          state.saveApiKeyOrFailureOption.fold(
            () => null,
            (either) => either.fold(
              (l) => handleError(context, l),
              (r) => context.read<SplashCubit>().fetchApiUrl(),
            ),
          );
          state.fetchApiUrlOrFailureOption.fold(
            () => null,
            (either) => either.fold(
              (l) => handleError(context, l),
              (r) => context.read<SplashCubit>().saveApiUrl(r),
            ),
          );

          if (state.status == SplashStatus.done) {
            //move to next page
            context.goNamed(AppRouter.weather);
          }
        },
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              color: AppColor.blueDarker,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    l10n.appName,
                    style: context.theme.textTheme.displayMedium?.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const StatusText(),
                SizedBox(
                  height: 24.h,
                ),
                BlocSelector<SplashCubit, SplashState, bool>(
                  selector: (state) => state.isLoading,
                  builder: (context, isLoading) => isLoading
                      ? const CircularProgressIndicator.adaptive(
                          backgroundColor: AppColor.white,
                        )
                      : const Icon(
                          Icons.check_rounded,
                          color: AppColor.white,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
