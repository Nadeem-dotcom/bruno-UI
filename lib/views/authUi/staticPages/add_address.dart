import 'package:bruno/components/authComponents/add_address_button.dart';
import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/components/authComponents/auth_back_button.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/views/homeUi/home.dart';
import 'package:flutter/material.dart';

class   AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AuthBackButton(onTap: () => Navigator.pop(context),),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const Text("Add Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0XFF26324A)),),
               const SizedBox(height: 5,),
               const Text("Add you address details below",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0XFF26324A)),),
               const SizedBox(height: 30,),
               const AuthTextField(hintText: 'The Palm Jebel Ali', icon: Icon(Icons.location_on_outlined)),
               const SizedBox(height: 20,),
               addressField('Street 20','Main'),
               const SizedBox(height: 20,),
               addressField('Dubai','Floor/Unit#'),
               const SizedBox(height: 40,),
               switchButton(),
               const SizedBox(height: 25,),
               const Row(
                 children: [
                   Text("Add a label",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0XFF26324A)),),
                 ],
               ),
               const SizedBox(height: 20,),
               const Row(
                 children: [
                   RoundButton(txt: "Home",icon: Icon(Icons.home_outlined,size: 50,color: Color(0XFFD78809),),),
                   SizedBox(width: 5,),
                   RoundButton(txt: "Work",icon: Icon(Icons.work,size: 50,color: Color(0XFFD78809),),),
                   SizedBox(width: 5,),
                   RoundButton(txt: "Partner",icon: Icon(Icons.favorite_border,size: 50,color: Color(0XFFD78809),),),
                   SizedBox(width: 5,),
                   RoundButton(txt: "Other",icon: Icon(Icons.add,size: 50,color: Color(0XFFD78809),),),
                 ],
               ),
               const SizedBox(height: 30,),
               AuthButton(txt: 'Add', onTap: () =>Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => const Home()),(route) => false,)),  
            ],
          ),
        ),
      ),
    );
  }

  Row addressField(String txt,String txt2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: AuthTextField(hintText: txt,),
            ),const SizedBox(width:8,),
          Expanded(
            child: AuthTextField(hintText: txt2),
          ),
          ],
          );
  }


  Row switchButton () {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     const Text("Set default address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0XFF26324A)),),
     Switch(
      activeTrackColor: const Color(0XFFD78809),
      activeColor: Colors.white,
     value: true, onChanged:(value) {
     },)
      ],
     );
  }
}