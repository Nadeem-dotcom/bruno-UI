import 'package:bruno/views/authUi/staticPages/share_address.dart';
import 'package:flutter/material.dart';

import '../../../components/authComponents/auth_back_button.dart';
import '../../../components/authComponents/auth_button.dart';

class Gift extends StatelessWidget {
  const Gift({super.key});

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
                Image.asset('assets/images/Present.png'),
            const SizedBox(height: 20,),
            const Text("It only gets yummier from here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0XFF26324A)),),
            const SizedBox(height: 5,),
            const Text("Here’s 500 PawPoints towards your furry pal’s meals & treats",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0XFF26324A)),),
            const Spacer(),
            AuthButton(txt: 'Continue', onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const ShareAddress(),))),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}