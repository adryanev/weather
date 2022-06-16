import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/core/utils/dimensions.dart';
import 'package:weather/features/weather/presentation/widgets/current_weather.dart';
import 'package:weather/features/weather/presentation/widgets/current_weather_info.dart';
import 'package:weather/features/weather/presentation/widgets/home_app_bar.dart';
import 'package:weather/features/weather/presentation/widgets/hourly_weather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Container(
          decoration: const BoxDecoration(color: AppColor.white),
          child: Column(
            children: const [
              JumbotronCard(),
              WeatherPerHourCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class JumbotronCard extends StatelessWidget {
  const JumbotronCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimension.aroundPadding,
      width: 1.sw,
      height: 0.7.sh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        gradient: AppColor.blueBackgroundGradient,
      ),
      child: Padding(
        padding: Dimension.aroundPadding,
        child: Column(
          children: [
            const HomeAppBar(),
            const CurrentWeather(),
            Padding(
              padding: Dimension.aroundPadding,
              child: Divider(
                height: 8.h,
                color: AppColor.white,
              ),
            ),
            const CurrentWeatherInfo()
          ],
        ),
      ),
    );
  }
}

class WeatherPerHourCard extends StatelessWidget {
  const WeatherPerHourCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Expanded(
      child: Container(
        width: 1.sw,
        decoration: const BoxDecoration(
          color: AppColor.blueDarker,
        ),
        padding: Dimension.aroundPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${DateTimeFormat.dayString.format(now)} '
              '| ${DateTimeFormat.monthAbbrWithDate.format(now)}',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const HourlyWeather();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
