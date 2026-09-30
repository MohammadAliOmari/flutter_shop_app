import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/regex/app_regex.dart';
import 'package:flutter_shop_app/utils/widgets/custom_app_bar.dart';
import 'package:flutter_shop_app/utils/widgets/custom_button.dart';
import 'package:flutter_shop_app/utils/widgets/custom_text_form_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

final TextEditingController email = TextEditingController();
final GlobalKey<FormState> formkey = GlobalKey<FormState>();

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Forgot Password', centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.blue[50],
                      child: Image.asset(
                        'assets/images/lock_icon.png',
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Reset Your Password ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Enter your email and we will send you \n a link to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 50),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!AppRegex.emailRegex.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },

                  isHide: false,
                  controller: email,
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email_outlined,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      log('Sucssefuly Send Reset Link');
                    }
                  },
                  text: 'Send Reset Link',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
