import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recase/recase.dart';
import 'package:weather/core/utils/context_extensions.dart';
import 'package:weather/features/weather/presentation/bloc/weather_bloc.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state.location != null) {
              return Expanded(
                child: Text(
                  state.location!.name.titleCase,
                  style: context.theme.textTheme.bodyLarge,
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ],
    );
  }
}
