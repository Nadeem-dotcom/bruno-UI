import 'package:bruno/components/authComponents/add_address_button.dart';
import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/views/firstTimeUserUi/check_out.dart';
import 'package:flutter/material.dart';
import '../../components/authComponents/auth_button.dart';
import '../../components/firstTimeUserComponents/steps.dart';
import '../../components/homeComponents/heading_text.dart';
import '../../components/homeComponents/paragraph_text.dart';

class DeliveryDetails2 extends StatelessWidget {
  final String userName;
  final String userAddress;
  const DeliveryDetails2 ({super.key, required this.userAddress, required this.userName});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              StepUi(
              widget1:  Container(), 
              widget2:  Container(), 
              widget3:  const CircularProgressIndicator(), 
              firstColor:  const Color(0XFF2ED573), 
              secondColor:  const Color(0XFF2ED573),
              thirdColor:  const Color(0XFF2ED573)
              ),
              const SizedBox(height: 30,),
              const HeadingText(txt: "Deliver Details"),
              const SizedBox(height: 10,),
              const ParagraphText(text: "Confirm the details below are correct and fil in all required fields"),
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
              const SizedBox(height: 10,),
              const AuthTextField(hintText: "The Palm Jebel Ali",icon: Icon(Icons.location_on_outlined),),
              const SizedBox(height: 20,),
              addressField("Street 20", "Main"),
              const SizedBox(height: 15,),
              addressField("Dubai", "Floor/Unit#"),
              const SizedBox(height: 20,),
              switchButton(),
              const SizedBox(height: 15,),
              const Align(alignment: Alignment.centerLeft,child: Text('Delivery instructions',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0XFF26324A)),)),
              const SizedBox(height: 5,),
              const Align(alignment: Alignment.centerLeft,child: Text('Give us more information about your address',style: TextStyle(color: Color(0XFF26324A)),)),
              const SizedBox(height: 20,),
              const AuthTextField(hintText: '(Optional) Note to Rider'),
              const Align(alignment: Alignment.centerRight,child: Text('0/3000',style: TextStyle(color: Color(0XFF26324A)),)),
              const SizedBox(height: 20,),
              const Align(alignment: Alignment.centerLeft,child:  Text("Add a label",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0XFF26324A)),)),
              const SizedBox(height: 10,),
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
              const SizedBox(height: 20,),
               AuthButton(txt: "Continue", onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const CheckOut(),));
               },)

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