import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recase/recase.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/core/utils/dimensions.dart';
import 'package:weather/features/weather/presentation/widgets/about_me.dart';
import 'package:weather/l10n/l10n.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.about.titleCase),
      ),
      body: Padding(
        padding: Dimension.aroundPadding,
        child: Column(
          children: [
            const AboutMe(),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {
                showLicensePage(context: context);
              },
              child: Text(
                l10n.license.toUpperCase(),
                style: context.theme.textTheme.button?.copyWith(
                  color: AppColor.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
