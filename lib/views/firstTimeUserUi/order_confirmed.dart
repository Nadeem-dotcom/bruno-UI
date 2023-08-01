import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/components/homeComponents/heading_text.dart';
import 'package:bruno/components/homeComponents/paragraph_text.dart';
import 'package:bruno/views/homeUi/home.dart';
import 'package:flutter/material.dart';

class OrderConfirmed extends StatelessWidget {
  const OrderConfirmed({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/firstTimeUser/orderConfirmed.png"),
              const SizedBox(height: 40,),
              const HeadingText(txt: "Order Confirmed"),
              const SizedBox(height: 10,),
              const ParagraphText(text: "Wag-nificent!! Your doggie's meals are set and our culinary maestro is at work. Your furry friend will soon be indulging in canine paradise."),
              const SizedBox(height: 40,),
              orderDetail(),
              const SizedBox(height: 40,),
        
              AuthButton(txt: " Save and Continue", onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderConfirmed(),));
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home(),), (route) => false);
               },),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }


  orderDetail() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color:const Color(0XFFF1F0F3) )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Order detail",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF000000)),),
          const SizedBox(height: 20,),
          amountText("Order number", "#FDS639820"),
          const SizedBox(height: 10,),
          amountText("Amount paid", "45 AED"),
        ],
      ),
    );
  }


  Row amountText(String key, String value) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(key,style: const TextStyle(color: Color(0XFF999999)),),
              Text(value,style: const TextStyle(color: Color(0XFF000000)),),
            ],
          );
  }
}