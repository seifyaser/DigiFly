import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final String? svgPath; 
  final double svgSize;
  final TextStyle textStylebutton;
  

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 55,
    this.borderRadius = 8,
    this.textStyle,
    this.backgroundColor,
    this.svgPath,
    this.svgSize = 24,
     required this.textStylebutton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Apptheme.primaryColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xffCCCCCC),
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
         
            if (svgPath != null) ...[
              SvgPicture.asset(
                svgPath!,
                height: svgSize,
                width: svgSize,
              ),
              const SizedBox(width: 22),
            ],
            Text(
              text,
              style: textStylebutton,
            ),
          ],
        ),
      ),
    );
  }
}
