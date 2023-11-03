import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/core/widgets/w_button.dart';
import 'package:productive/features/authentication/presentation/widgets/social_media_login_button.dart';

import '../../../assets/constants/colors.dart';
import '../../../assets/constants/icons.dart';
import '../../../core/widgets/w_divider.dart';

class LoginScreen extends StatefulWidget {
  static Route route() => MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final mailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  final mailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final textFieldContentStyle = const TextStyle(
    color: hintTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  bool isObscure = true;

  InputDecoration decoration({
    required String hintText,
    Widget? suffixIcon,
  }) =>
      InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 13.5),
        hintStyle: TextStyle(
          color: hintTextColor.withOpacity(.6),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        fillColor: textFieldBackgroundColor2,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: textFieldBorderColor.withOpacity(.1),
            style: BorderStyle.solid,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: textFieldBorderColor.withOpacity(.1),
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: textFieldBorderColor.withOpacity(.1),
            style: BorderStyle.solid,
          ),
        ),
      );

  @override
  void dispose() {
    mailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    mailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Gap(67),
            SvgPicture.asset(AppIcons.logo),
            const Gap(44),
            TextField(
              style: textFieldContentStyle,
              cursorColor: cursorColor,
              focusNode: mailFocusNode,
              controller: mailTextEditingController,
              decoration: decoration(hintText: 'Email'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () {
                passwordFocusNode.requestFocus();
              },
            ),
            const Gap(16),
            TextField(
              style: textFieldContentStyle,
              cursorColor: cursorColor,
              focusNode: passwordFocusNode,
              controller: passwordTextEditingController,
              decoration: decoration(
                hintText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 13.5),
                    child: SvgPicture.asset(
                      isObscure ? AppIcons.eyeOff : AppIcons.eyeOn,
                    ),
                  ),
                ),
              ),
              onEditingComplete: () {
                // TODO: Login
              },
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObscure,
            ),
            const Gap(12),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: textButtonColor,
                  ),
                ),
              ),
            ),
            const Gap(16),
            WButton(
              onTap: () {},
              text: 'Login',
            ),
            const Gap(56),
            const Row(
              children: [
                Expanded(child: WDivider()),
                Gap(6),
                Text(
                  'OR',
                  style: TextStyle(
                    color: white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(5),
                Expanded(child: WDivider()),
              ],
            ),
            const Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaLoginButton(onTap: () {}, icon: AppIcons.facebook),
                const Gap(32),
                SocialMediaLoginButton(onTap: () {}, icon: AppIcons.google),
                const Gap(32),
                SocialMediaLoginButton(onTap: () {}, icon: AppIcons.apple),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
