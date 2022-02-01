import 'package:crypto_app/src/shared/sigma_colors.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const PrimaryButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 50,
        child: GlassContainer.clearGlass(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.7,
          borderRadius: BorderRadius.circular(7),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: SigmaColors.divider,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
