import 'package:bruno/views/firstTimeUserUi/delivery_details2.dart';
import 'package:flutter/material.dart';
import '../../components/authComponents/auth_button.dart';
import '../../components/firstTimeUserComponents/steps.dart';
import '../../components/homeComponents/heading_text.dart';
import '../../components/homeComponents/paragraph_text.dart';

class DeliveryDetails extends StatelessWidget {
  final String userName;
  final String userAddress;
  const DeliveryDetails ({super.key, required this.userAddress, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Transitional Plan"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            StepUi(
            widget1:  Container(), 
            widget2:  const CircularProgressIndicator(), 
            widget3:  Container(), 
            firstColor:  const Color(0XFF2ED573), 
            secondColor:  const Color(0XFF2ED573),
            thirdColor:  const Color(0XFFE3E1E7)
            ),
            const SizedBox(height: 30,),
            const HeadingText(txt: "Deliver Details"),
            const SizedBox(height: 10,),
            const ParagraphText(text: "Order before 10 pm to get order"),
            const SizedBox(height: 20,),
            ListTile(
              leading: const Icon(Icons.location_on_outlined,color: Color(0XFFD78809),),
              title: Text(userName,style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF26324A)),),
              subtitle: Text(userAddress,style: const TextStyle(color: Color(0XFF26324A)),),
              trailing: InkWell(
                onTap: () =>  Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0XFFF1F0F3))
                  ),
                  child: const Icon(Icons.edit,color: Color(0XFFD78809)),
                ),
              ),
            ),
            const Spacer(),
             AuthButton(txt: "Continue", onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  DeliveryDetails2(userName: userName,userAddress: userAddress),));
             },),
            const SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}