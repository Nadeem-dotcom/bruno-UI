import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:flutter/material.dart';

import '../../../components/authComponents/auth_button.dart';

class ForgotPasswordSuccess extends StatelessWidget {
  const ForgotPasswordSuccess ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AuthBackButton(onTap: () => Navigator.pop(context),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/images/Check.png'),
            const SizedBox(height: 20,),
            const Text("Your password has been reset!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0XFF26324A)),),
            const SizedBox(height: 5,),
            const Text("Use new password to access your account",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0XFF26324A)),),
            const Spacer(),
            // AuthButton(txt: 'Continue', onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const Gift(),))),
            AuthButton(txt: "Continue", onTap: (){}),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}