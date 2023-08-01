import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:bruno/views/authUi/forgotPasswordPages/forgot_pass_success.dart';
import 'package:flutter/material.dart';

import '../../../components/authComponents/auth_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AuthBackButton(onTap: () => Navigator.pop(context),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Reset Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0XFF26324A)),),
              const SizedBox(height: 5,),
              const Text("We will send you an confirmation code to your phone for password reset",style: TextStyle(fontSize: 15,color: Color(0XFF8C8994)),),
              const SizedBox(height: 40,),
              const AuthTextField(icon: Icon(Icons.lock), hintText: 'New Password',),
              const SizedBox(height: 30,),
              const AuthTextField(icon: Icon(Icons.lock), hintText: 'Re-Enter New Password',),
              const SizedBox(height: 40,),
              AuthButton(txt: 'Continue', onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordSuccess(),))),
        
            ],
          ),
        ),
      ),
    );
  }
}