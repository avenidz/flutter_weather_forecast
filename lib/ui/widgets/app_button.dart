import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key, this.isPrimaryButton = true, required this.onPressed, required this.buttonLabel})
      : super(key: key);

  final bool isPrimaryButton;
  final VoidCallback onPressed;
  final String buttonLabel;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: widget.isPrimaryButton ? ColorRes.primary : ColorRes.buttonLogout.withOpacity(.5),
            borderRadius: BorderRadius.circular(15)),
        child: Text(widget.buttonLabel,
          textAlign: TextAlign.center,
          style: const TextStyle(color: ColorRes.whiteText, fontSize: 15),
        ),
      ),
    );
  }
}
