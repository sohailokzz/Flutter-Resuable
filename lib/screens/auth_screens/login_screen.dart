import 'package:flutter/material.dart';
import 'package:flutter_reusable/routes/routes_names.dart';
import 'package:flutter_reusable/widgets/custom_button.dart';
import 'package:flutter_reusable/widgets/divider_row.dart';
import 'package:flutter_reusable/widgets/primary_text_button.dart';
import 'package:flutter_reusable/widgets/secondary_button.dart';
import 'package:flutter_reusable/widgets/primary_textfield.dart';
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      PrimaryTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        borderRadius: BorderRadius.circular(24),
                        hintText: "sohail@gmail.com",
                        controller: loginScreenVm.emailC,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      PrimaryTextFormField(
                        borderRadius: BorderRadius.circular(24),
                        hintText: 'Password',
                        controller: loginScreenVm.passwordC,
                        isPassword: true,
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
                      CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RoutesName.homeScreen,
                          );
                        },
                        text: 'Log In',
                        backgroundColor: AppColor.kPrimary,
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
                      title3: ' and',
                      title4: ' Conditions of Use',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
