import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/views/authUi/staticPages/otp_verification.dart';
import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

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
            Image.asset('assets/images/Congratulation.png'),
            const SizedBox(height: 20,),
            const Text("Woof Woof! You did it!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0XFF26324A)),),
            const SizedBox(height: 5,),
            const Text("You’re now one step closer to giving your doggo the love and treats they deserve.",textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Color(0XFF26324A)),),
            const Spacer(),
            AuthButton(txt: 'Continue', onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerification(),))),
            const SizedBox(height: 40,),

          ],
        ),
      ),
    );
  }
}