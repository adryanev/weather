import 'package:flutter/material.dart';
import 'package:weather/core/utils/context_extensions.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Text(
                'Developer',
                style: context.theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            TableCell(
              child: Text(
                'Adryan Eka Vandra',
                style: context.theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(
                'Email',
                style: context.theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            TableCell(
              child: Text(
                'adryanekavandra@gmail.com',
                style: context.theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
