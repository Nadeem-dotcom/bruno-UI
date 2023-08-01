import 'package:bruno/views/authUi/staticPages/cong.dart';
import 'package:flutter/material.dart';
import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/components/authComponents/auth_socialmedia_button.dart';
import 'package:flutter/cupertino.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('Let’s get started!',maxLines: 1,style: TextStyle(color: Color(0XFF071731),fontSize:20,fontWeight: FontWeight.w500),),
               const SizedBox(height: 10,),
               const Text('Tell us a bit about you and your pawsome friend',maxLines: 1,style: TextStyle(fontSize: 12,color: Color(0XFF8C8994)),),
               const SizedBox(height: 20,),
               const AuthTextField(icon: Icon(CupertinoIcons.person_alt), hintText: 'Full name',),
               const SizedBox(height: 20,),
               const AuthTextField(icon: Icon(CupertinoIcons.mail), hintText: 'Email address',),
               const SizedBox(height: 20,),
               const AuthTextField(icon: Icon(CupertinoIcons.phone), hintText: '|  Phone Number',),
               const SizedBox(height: 20,),
               const AuthTextField(icon: Icon(Icons.lock), hintText: 'Password',),
               const SizedBox(height: 25,),
               AuthButton(txt: 'Continue',onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Congratulations(),)),),
               const SizedBox(height: 15,),
            
                const Align(
                  alignment: Alignment.center,
                  child: Text('Or continue with',style: TextStyle(fontSize: 13,color: Color(0XFF8C8994)),),
                ),
                const SizedBox(height: 20,),
                const SocialMediaButton(),
                Container(height: 110,),
                haveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
  Row haveAccount() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already Have Account?',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF071731)),),
        InkWell(onTap: () {
          Navigator.pop(context);
        },child: const Text(' Log in',style: TextStyle(color: Color(0XFFD78809)),)),
      ],
    );
  }
}