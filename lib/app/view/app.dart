// Copyright (c) 2022, Adryan Eka Vandra
// https://github.com/adryanev
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/app/routes/router.dart';
import 'package:weather/core/presentation/blocs/flash/flash_cubit.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/injector.dart';
import 'package:weather/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<FlashCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<FlashCubit, FlashState>(
            listener: (context, state) {
              state.when(
                disappeared: () => null,
                appeared: (message) => context.showSnackbar(
                  message: message,
                ),
              );
            },
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(
            ScreenUtilConstants.width,
            ScreenUtilConstants.height,
          ),
          minTextAdapt: true,
          builder: (context, child) => MaterialApp.router(
            scaffoldMessengerKey: rootScaffoldMessengerKey,
            theme: ThemeData(
              primaryColor: AppColor.blue,
              fontFamily: GoogleFonts.poppins().fontFamily,
              textTheme: Typography.englishLike2018.apply(
                fontSizeFactor: 1.sp,
                bodyColor: AppColor.white,
              ),
            ),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            routerDelegate: appRouter.routerDelegate,
            routeInformationParser: appRouter.routeInformationParser,
            builder: (context, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: widget!,
              );
            },
          ),
        ),
      ),
    );
  }
}
