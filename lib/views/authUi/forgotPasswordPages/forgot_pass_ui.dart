import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../components/authComponents/auth_button.dart';
import 'forgot_otp.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AuthBackButton(onTap: () => Navigator.pop(context),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Forget Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0XFF26324A)),),
            const SizedBox(height: 5,),
            const Text("We will send you an confirmation code to your phone for password reset",style: TextStyle(fontSize: 15,color: Color(0XFF8C8994)),),
            const SizedBox(height: 40,),
            const AuthTextField(icon: Icon(CupertinoIcons.phone), hintText: '+1  |  Phone Number',),
            const SizedBox(height: 40,),
            AuthButton(txt: 'Continue', onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotOTP(),))),

          ],
        ),
      ),
    );
  }
}