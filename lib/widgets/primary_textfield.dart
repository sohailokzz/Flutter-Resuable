import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilis/app_colors.dart';

// ignore: must_be_immutable
// ignore: must_be_immutable
class PrimaryTextFormField extends StatefulWidget {
  PrimaryTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    required this.controller,
    this.width,
    this.height,
    this.hintTextColor,
    this.onChanged,
    this.onTapOutside,
    this.prefixIcon,
    this.prefixIconColor,
    this.inputFormatters,
    this.maxLines,
    this.borderRadius,
    this.isPassword = false,
    this.backgroundColor,
  });
  final BorderRadiusGeometry? borderRadius;

  final String hintText;

  final List<TextInputFormatter>? inputFormatters;
  Widget? prefixIcon;
  Function(PointerDownEvent)? onTapOutside;
  final Function(String)? onChanged;
  final double? width, height;
  TextEditingController controller;
  final Color? hintTextColor, prefixIconColor;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool isPassword;
  final Color? backgroundColor;

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    InputBorder enabledBorder = InputBorder.none;
    InputBorder focusedErrorBorder = InputBorder.none;
    InputBorder errorBorder = InputBorder.none;
    InputBorder focusedBorder = InputBorder.none;

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 52,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        color: widget.backgroundColor ?? AppColor.kBackground,
        border: Border.all(color: AppColor.kLine),
      ),
      child: TextFormField(
        controller: widget.controller,
        maxLines: widget.maxLines ?? 1,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword ? _obscureText : false,
        style:
            GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.kWhite,
            ).copyWith(
              color: AppColor.kGrayscaleDark100,
            ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 15,
          ),
          filled: true,
          hintText: widget.hintText,
          hintStyle:
              GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.kWhite,
              ).copyWith(
                color: widget.hintTextColor ?? AppColor.kGrayscaleDark100,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
          prefixIcon: widget.prefixIcon,
          prefixIconColor: widget.prefixIconColor,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColor.kGrayscaleDark100,
                    size: 17,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          errorBorder: errorBorder,
          focusedErrorBorder: focusedErrorBorder,
        ),
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        onTapOutside: widget.onTapOutside,
      ),
    );
  }
}
