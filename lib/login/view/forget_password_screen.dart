import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/app_colors.dart/app_colors.dart';
import 'package:flutter_shop_app/utils/widgets/custom_button.dart';
import 'package:flutter_shop_app/utils/widgets/custom_text_form_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.primary,
        title: const Text(
          'Forgot Password',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                isHide: false,
                controller: TextEditingController(),
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  // Handle password reset logic here
                },
                text: 'Send Reset Link',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
