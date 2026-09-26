import 'package:flutter/material.dart';
import 'package:flutter_shop_app/router/app_route.dart';
import 'package:flutter_shop_app/utils/app_colors.dart/app_colors.dart';
import 'package:flutter_shop_app/utils/widgets/custom_button.dart';
import 'package:flutter_shop_app/utils/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHide = true;

  void changeIsHide() {
    setState(() {
      isHide = !isHide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('assets/images/shop_bag.png'),
                  ),
                ),

                const Text(
                  'ShopApp',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Sign in to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(height: 30),
                CustomTextFormField(
                  isHide: false,
                  controller: TextEditingController(),
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email_outlined,
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  controller: TextEditingController(),
                  labelText: 'Password',
                  isHide: isHide,
                  onTap: changeIsHide,
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock_outline,
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.forgetPassword);
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(onPressed: () {}, text: 'Login'),
                const SizedBox(height: 40),
                const Text.rich(
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
