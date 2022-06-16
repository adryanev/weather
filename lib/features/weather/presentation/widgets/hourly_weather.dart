import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/dimensions.dart';
import 'package:weather/gen/assets.gen.dart';
import 'package:weather/l10n/l10n.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final dateFormat = DateFormat.Hm();
    return Padding(
      padding: Dimension.aroundPadding,
      child: Column(
        children: [
          Text(
            dateFormat.format(DateTime.now()),
          ),
          SizedBox(
            height: 8.h,
          ),
          Assets.icons.fluentWeatherRainShowersDay24Regular
              .svg(color: AppColor.white),
          SizedBox(
            height: 4.h,
          ),
          Text('${l10n.temperatureDegree(20)} / ${l10n.temperatureDegree(24)}'),
          SizedBox(
            height: 4.h,
          ),
          Text('${l10n.percentage(0.74)} ${l10n.rain}')
        ],
      ),
    );
  }
}
