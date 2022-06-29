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

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({Key? key, required this.weather}) : super(key: key);
  final Weather? weather;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final dateFormat = DateTimeFormat.hourMinutes;

    return Padding(
      padding: Dimension.aroundPadding,
      child: Column(
        children: [
          Text(
            dateFormat.format(weather?.dateTime ?? DateTime.now()),
            style: context.theme.textTheme.bodyText1?.copyWith(
              color: AppColor.white,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SvgPicture.asset(
            weather == null
                ? Assets.icons.clearNight.path
                : 'assets/icons/${weather?.icon}.svg',
            height: 32.h,
            color: AppColor.white,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '${l10n.temperatureDegree(weather?.temperature ?? 0)} '
            '/ ${l10n.temperatureDegree(weather?.feelsLike ?? 0)}',
            style: context.theme.textTheme.bodyText1?.copyWith(
              color: AppColor.white,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            '${l10n.percentage((weather?.precipitationProbability ?? 0) / 100)}'
            ' ${l10n.rain}',
            style: context.theme.textTheme.bodyText1?.copyWith(
              color: AppColor.white,
            ),
          )
        ],
      ),
    );
  }
}
