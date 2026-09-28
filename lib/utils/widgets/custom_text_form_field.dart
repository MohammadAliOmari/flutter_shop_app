import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.isHide = true,
    this.onTap,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
    required this.keyboardType,
    this.validator,
    this.prefixIcon,
  });
  final bool isHide;
  final void Function()? onTap;
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isHide,
      obscuringCharacter: '*',
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textInputAction: TextInputAction.next,
      // validator: (password) {
      //   if (password?.isEmpty ?? true) {
      //     return 'Password is required.';
      //   } else if (password!.length > 8) {
      //     return 'Password at least 8 charcter';
      //   } else if (!password.contains(AppRegex.passwordRegex)) {
      //     return 'Password must be at least 8 characters, with uppercase, lowercase, number, and symbol.';
      //   }
      //   return null;
      // },
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        suffixIcon: isPassword
            ? GestureDetector(
                onTap: onTap,
                child: Icon(
                  isHide ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                  size: 30,
                ),
              )
            : null,
        labelText: labelText,
        errorMaxLines: 2,

        prefixIcon: Icon(prefixIcon, size: 28),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
