import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;
  final double? height;
  final double? width;
  final Color? textColor;
  final Color? backgroundColor;
  final bool? isOutline;
  final Color? loadingColor;
  final double? fontSize;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.height,
    this.width,
    this.textColor,
    this.backgroundColor,
    this.isOutline = false,
    this.loadingColor = Colors.white,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: height ?? size.height * 0.062,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? const Color(0xFF637BF4),
          foregroundColor: Colors.white,
          elevation: 0,
          side: isOutline == true
              ? BorderSide(
                  color: const Color(0xFF637BF4),
                )
              : BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        child: isLoading
            ? SizedBox(
                width: 15,
                height: 15,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(loadingColor!),
                ),
              )
            : Text(
                text,
                style: textTheme.titleSmall!.copyWith(
                  fontSize: fontSize ?? 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: textColor ?? Colors.white,
                ),
              ),
      ),
    );
  }
}
