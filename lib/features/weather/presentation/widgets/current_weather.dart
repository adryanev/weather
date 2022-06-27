import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/core/utils/dimensions.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';
import 'package:weather/gen/assets.gen.dart';
import 'package:weather/l10n/l10n.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    required this.weather,
    Key? key,
  }) : super(key: key);
  final Weather? weather;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final now = weather?.dateTime ?? DateTime.now();
    return Column(
      children: [
        Padding(
          padding: Dimension.aroundPadding,
          child: SvgPicture.asset(
            weather == null
                ? Assets.icons.clearNight.path
                : 'assets/icons/${weather?.icon}.svg',
            color: AppColor.white,
            width: 0.2.sw,
            height: 0.12.sh,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          '${DateTimeFormat.dayString.format(now)} '
          '| ${DateTimeFormat.monthAbbrWithDate.format(now)}',
          style: context.theme.textTheme.labelLarge,
        ),
        Text(
          l10n.temperatureDegree(weather?.temperature ?? 24),
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: AppColor.white,
              ),
        ),
        Text(
          '${weather?.condition}',
          style: context.theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
