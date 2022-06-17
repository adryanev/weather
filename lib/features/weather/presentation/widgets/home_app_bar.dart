import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recase/recase.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/gen/assets.gen.dart';
import 'package:weather/l10n/l10n.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: null,
          icon: Assets.icons.plus.svg(
            color: AppColor.white,
          ),
        ),
        BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Text(
                l10n.loading,
                style: context.theme.textTheme.bodyLarge,
              );
            }
            if (state.location != null) {
              return Text(
                state.location!.name.titleCase,
                style: context.theme.textTheme.bodyLarge,
              );
            }
            return const SizedBox();
          },
        ),
        IconButton(
          onPressed: null,
          icon: Assets.icons.overflowMenuVertical.svg(
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
