import 'package:flutter/material.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/helper/spacing.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/theming/styles.dart';
import 'package:weather_app_task_mohamed_ebrahim/model/weather/weather.dart';

class ColumnIconText extends StatelessWidget {
  IconData? icon;
  double? iconSize;
  Color? iconColor;
  TextStyle? textTitleStyle;
  String? textTitle;
  TextStyle? textStyleDescription;
  double? textDescription;
  TextStyle? textStyleDetails;
  String? textDetails;
  String? unit;

  ColumnIconText(
      {super.key,
      this.icon,
      this.iconColor,
      this.iconSize,
      this.textDescription,
      this.textStyleDescription,
      required this.textDetails,
      required this.textTitle,
      this.textStyleDetails,
      this.textTitleStyle,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: iconColor ?? Colors.green,
          size: iconSize ?? 40,
        ),
        verticalSpace(20),
        Text(textTitle!, style: textTitleStyle),
        Text('$textDescription $textDetails $unit',
            style: TextStyles.font15regularblack),
      ],
    );
  }
}
