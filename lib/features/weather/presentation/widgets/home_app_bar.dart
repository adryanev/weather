import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/gen/assets.gen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: null,
          icon: Assets.icons.plus.svg(
            color: AppColor.white,
          ),
        ),
        Text(
          'Your Location',
          style: context.theme.textTheme.bodyLarge,
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
