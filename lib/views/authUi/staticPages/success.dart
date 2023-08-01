import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/views/authUi/staticPages/gift.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

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
            const Text("Congratulations!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0XFF26324A)),),
            const SizedBox(height: 5,),
            const Text("Your account has been verified",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0XFF26324A)),),
            const Spacer(),
            AuthButton(txt: 'Continue', onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const Gift(),))),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }

}