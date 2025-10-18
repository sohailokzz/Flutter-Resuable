import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_reusable/widgets/divider_row.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../utilis/app_colors.dart';
import '../../utilis/image_assets.dart';
import '../../widgets/custom_richtext.dart';
import '../../widgets/terms_privacy_text.dart';
import 'login_screen_vm.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Consumer<LoginScreenVm>(
        builder: (context, loginScreenVm, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'Hi, Welcome Back! 👋',
                    textAlign: TextAlign.center,
                    style: textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'We happy to see you. Sign In to your account',
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge!.copyWith(
                      color: AppColor.kGrayscale40,
                    ),
                  ),
                  const SizedBox(height: 36),
                  TextFieldWithTitle(
                    title: 'Email',
                    hintText: "khalid@gmail.com",
                    controller: loginScreenVm.emailC,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style:
                            GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.kWhite,
                            ).copyWith(
                              color: AppColor.kGrayscaleDark100,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                      ),
                      const SizedBox(height: 8),
                      PasswordTextField(
                        borderRadius: BorderRadius.circular(24),
                        hintText: 'Password',
                        controller: loginScreenVm.passwordC,
                        width: 327,
                        height: 52,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PrimaryTextButton(
                        onPressed: () {},
                        title: 'Forgot Password?',
                        textStyle: const TextStyle(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Column(
                    children: [
                      PrimaryButton(
                        elevation: 0,
                        onTap: () {},
                        text: 'LogIn',
                        bgColor: AppColor.kPrimary,
                        borderRadius: 20,
                        height: 46,
                        width: 327,
                        textColor: AppColor.kWhite,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: CustomRichText(
                          title: 'Don’t have an account?',
                          subtitle: ' Create here',
                          onTab: () {},
                          subtitleTextStyle:
                              GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.kWhite,
                              ).copyWith(
                                color: AppColor.kPrimary,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Column(
                      children: [
                        const DividerRow(title: 'Or Sign In with'),
                        const SizedBox(height: 24),
                        SecondaryButton(
                          height: 56,
                          textColor: AppColor.kGrayscaleDark100,
                          width: 280,
                          onTap: () {},
                          borderRadius: 24,
                          bgColor: AppColor.kBackground.withValues(
                            alpha: 0.3,
                          ),
                          text: 'Continue with Google',
                          icons: ImagesPath.kGoogleIcon,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TermsAndPrivacyText(
                      title1: '  By signing up you agree to our',
                      title2: ' Terms ',
                      title3: '  and',
                      title4: ' Conditions of Use',
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

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

class SecondaryButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text, icons;
  final double width;
  final double height;
  final double borderRadius;
  final double? fontSize;
  final Color textColor, bgColor;
  const SecondaryButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.width,
    required this.height,
    required this.icons,
    required this.borderRadius,
    this.fontSize,
    required this.textColor,
    required this.bgColor,
  });

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller =
        AnimationController(
          vsync: this,
          duration: _animationDuration,
        )..addListener(() {
          setState(() {});
        });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
          height: widget.height,
          alignment: Alignment.center,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.bgColor,
            border: Border.all(color: AppColor.kLine),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Row(
            children: [
              Image.asset(widget.icons, width: 23.85, height: 23.04),
              const SizedBox(width: 12),
              Text(
                widget.text,
                style:
                    GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.kWhite,
                    ).copyWith(
                      color: widget.textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimaryButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius, elevation;
  final double? fontSize;
  final IconData? iconData;
  final Color? textColor, bgColor;
  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.text,
    this.width,
    this.height,
    this.elevation = 5,
    this.borderRadius,
    this.fontSize,
    required this.textColor,
    required this.bgColor,
    this.iconData,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller =
        AnimationController(
          vsync: this,
          duration: _animationDuration,
        )..addListener(() {
          setState(() {});
        });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: Card(
          elevation: widget.elevation ?? 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius!),
          ),
          child: Container(
            height: widget.height ?? 55,
            alignment: Alignment.center,
            width: widget.width ?? double.maxFinite,
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(widget.borderRadius!),
            ),
            child: Text(
              widget.text,
              style:
                  GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.kWhite,
                  ).copyWith(
                    color: widget.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: widget.fontSize,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.textStyle,
  });
  final Function() onPressed;
  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String hintText;

  final double width, height;
  final TextEditingController controller;
  final BorderRadiusGeometry borderRadius;
  const PasswordTextField({
    super.key,
    required this.hintText,
    required this.height,
    required this.controller,
    required this.width,
    required this.borderRadius,
  });
  @override
  PasswordTextFieldState createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    InputBorder enabledBorder = InputBorder.none;
    InputBorder focusedErrorBorder = InputBorder.none;
    InputBorder errorBorder = InputBorder.none;
    InputBorder focusedBorder = InputBorder.none;

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        color: AppColor.kBackground2,
        border: Border.all(color: AppColor.kLine),
      ),
      child: TextFormField(
        obscureText: _obscureText,
        controller: widget.controller,
        style:
            GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.kWhite,
            ).copyWith(
              color: AppColor.kGrayscaleDark100,
            ),
        decoration: InputDecoration(
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 15,
          ),
          suffixIcon: IconButton(
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
          ),
          hintText: widget.hintText,
          hintStyle:
              GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.kWhite,
              ).copyWith(
                color: AppColor.kGrayscale40,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          errorBorder: errorBorder,
          focusedErrorBorder: focusedErrorBorder,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PrimaryTextFormField extends StatelessWidget {
  PrimaryTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    required this.controller,
    required this.width,
    required this.height,
    this.hintTextColor,
    this.onChanged,
    this.onTapOutside,
    this.prefixIcon,
    this.prefixIconColor,
    this.inputFormatters,
    this.maxLines,
    this.borderRadius,
  });
  final BorderRadiusGeometry? borderRadius;

  final String hintText;

  final List<TextInputFormatter>? inputFormatters;
  Widget? prefixIcon;
  Function(PointerDownEvent)? onTapOutside;
  final Function(String)? onChanged;
  final double width, height;
  TextEditingController controller;
  final Color? hintTextColor, prefixIconColor;
  final TextInputType? keyboardType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    InputBorder enabledBorder = InputBorder.none;
    InputBorder focusedErrorBorder = InputBorder.none;
    InputBorder errorBorder = InputBorder.none;
    InputBorder focusedBorder = InputBorder.none;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: AppColor.kBackground,
        border: Border.all(color: AppColor.kLine),
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
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
          hintText: hintText,
          hintStyle:
              GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.kWhite,
              ).copyWith(
                color: AppColor.kGrayscaleDark100,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          errorBorder: errorBorder,
          focusedErrorBorder: focusedErrorBorder,
        ),
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        onTapOutside: onTapOutside,
      ),
    );
  }
}
