import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/components/authComponents/auth_socialmedia_button.dart';
import 'package:bruno/views/authUi/forgotPasswordPages/forgot_pass_ui.dart';
import 'package:bruno/views/authUi/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const SizedBox(height: 5,), 
               const Text('Welcome back Dog Lovers',maxLines: 1,style: TextStyle(color: Color(0XFF071731),fontSize:20,fontWeight: FontWeight.w500),),
               const SizedBox(height: 10,),
               const Text('Please enter your login details below',style: TextStyle(fontSize: 12,color: Color(0XFF8C8994)),),
               const SizedBox(height: 20,),
               
               const AuthTextField(icon: Icon(CupertinoIcons.mail), hintText: 'Email address',),
               const SizedBox(height: 20,),
               
               const AuthTextField(icon: Icon(Icons.lock), hintText: 'Password',),
               const SizedBox(height: 5,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen(),)),
                      
                      child:const Text('Forgot Password',style: TextStyle(color: Color(0XFFD78809)),))
                  ],
                ),
               const SizedBox(height: 25,),
               AuthButton(txt: 'Continue',onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),)),),
               const SizedBox(height: 15,),
            
                const Align(
                  alignment: Alignment.center,
                  child: Text('Or continue with',style: TextStyle(fontSize: 13,color: Color(0XFF8C8994)),),
                ),
                const SizedBox(height: 20,),
                const SocialMediaButton(),
                Container(height: 210,),
                haveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row haveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don’t Have Account?',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF071731)),),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
          },
          child: const Text(' Sign Up',style: TextStyle(color: Color(0XFFD78809)),)),
      ],
    );
  }
}