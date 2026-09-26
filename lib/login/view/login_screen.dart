import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/app_colors.dart/app_colors.dart';
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
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('assets/images/shop_bag.png'),
                  ),
                ),
            
                Text(
                  'ShopApp',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            
                ),
                Text(
                  'Sign in to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18,color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  isHide: false,
                  controller: TextEditingController(),
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  
                  controller: TextEditingController(),
                  labelText: 'Password',
                  isHide: isHide,
                  onTap: changeIsHide,
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?', style: TextStyle(fontSize: 16, color: AppColors.primary,fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 20,),
                ElevatedButton( 
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    minimumSize: Size(double.infinity, 60),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                  
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(  
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(fontSize: 16, color: AppColors.primary,fontWeight: FontWeight.bold),
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
