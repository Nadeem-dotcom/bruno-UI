import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/views/authUi/staticPages/success.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
            Image.asset('assets/images/Password.png'),
            const SizedBox(height: 20,),
            const Text("OTP Verification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0XFF26324A)),),
            const SizedBox(height: 5,),
            const Text("We have send an OTP to **********785",textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Color(0XFF26324A)),),
            const SizedBox(height: 20,),
            Image.asset('assets/images/otpcode.png'),
            const SizedBox(height: 15,),
            haveAccount(),
            const Spacer(),
            AuthButton(txt: 'Continue', onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const Success(),))),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }

  Row haveAccount() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Didn’t Receive Code?',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF071731)),),
        Text(' Resend again',style: TextStyle(color: Color(0XFFD78809)),),
      ],
    );
  }
}