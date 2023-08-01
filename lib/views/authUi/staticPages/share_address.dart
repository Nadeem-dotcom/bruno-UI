import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:flutter/material.dart';

import 'add_address.dart';

class ShareAddress extends StatelessWidget {
  const ShareAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            const Text("Share Your Address With Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0XFF26324A)),),
            const SizedBox(height: 5,),
            const Text("Please enter your location or allow access to your location to find food near you",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0XFF26324A)),),
            const SizedBox(height: 30,),
            Image.asset('assets/images/Map.png'),
            const Spacer(),
            AuthButton(txt: 'Allow Location', onTap: () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AddAddress(),))),
            const SizedBox(height: 20,),
            const Text('Enter Manually',style: TextStyle(fontSize: 15,color: Color(0XFFD78809)),),
            const SizedBox(height: 40,),

          ],
        ),
      ),
    );
  }
}