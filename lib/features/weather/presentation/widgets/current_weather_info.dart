import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recase/recase.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';
import 'package:weather/gen/assets.gen.dart';
import 'package:weather/l10n/l10n.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({
    required this.weather,
    Key? key,
  }) : super(key: key);
  final Weather? weather;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Expanded(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 3,
        mainAxisSpacing: 16.h,
        // padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.icons.locationCurrent.svg(
                color: AppColor.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.kmh(weather?.windSpeed ?? 0)),
                  Text(l10n.wind.titleCase),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.icons.fluentWeatherRainShowersDay24Regular.svg(
                color: AppColor.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.percentage(
                      (weather?.precipitationProbability ?? 0) / 100,
                    ),
                  ),
                  Text(l10n.chanceOfRain.titleCase),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.icons.temperature.svg(
                color: AppColor.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.mbar(weather?.pressure ?? 0)),
                  Text(l10n.pressure.titleCase),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.icons.ionWaterOutline.svg(
                color: AppColor.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.percentage((weather?.humidity ?? 0) * 0.01)),
                  Text(l10n.humidity.titleCase),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
