import 'package:flutter/material.dart';
import '../screens/auth_screens/login_screen.dart';

class TextFieldWithTitle extends StatelessWidget {
  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final bool? isPassword;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const TextFieldWithTitle({
    super.key,
    required this.title,
    this.hintText,
    this.controller,
    this.isPassword,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.labelLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        PrimaryTextFormField(
          borderRadius: BorderRadius.circular(24),
          hintText: 'Khaledmohammed@gmail.com',
          controller: controller!,
          width: 327,
          height: 52,
        ),
      ],
    );
  }
}
