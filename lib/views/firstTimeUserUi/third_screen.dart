import 'package:bruno/components/firstTimeUserComponents/steps.dart';
import 'package:bruno/components/homeComponents/paragraph_text.dart';
import 'package:bruno/views/firstTimeUserUi/select_delivery_date.dart';
import 'package:flutter/material.dart';
import '../../components/authComponents/auth_button.dart';
import '../../components/firstTimeUserComponents/user_product_grid.dart';
import '../../components/homeComponents/heading_text.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List gridItemList1 = ["Beefy Barkfest","Cheery Chicken","Beefy Barkfest","Cheery Chicken"];
  List gridItemList2 = ["Land & Sea","Barkin’ Beef","Beefy Barkfest","Cheery Chicken"];
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
              widget2:  const CircularProgressIndicator(), 
              widget3:  Container(), 
              firstColor:  const Color(0XFF2ED573), 
              secondColor:  const Color(0XFF2ED573),
              thirdColor:  const Color(0XFFE3E1E7)
              ),
              const SizedBox(height: 30,),
              const HeadingText(txt: "Let’s feed your beloved Labby"),
              const SizedBox(height: 10,),
              const ParagraphText(text: "Pick from any of our Bruno-approved delightful dishes below"),
              const SizedBox(height: 20,),
              const Align(alignment: Alignment.topLeft,child: Text('Recommended Dishes',style: TextStyle(color: Color(0XFF12121B),fontWeight: FontWeight.w500,fontSize: 18),)),
              const SizedBox(height: 20,),
              UserProductGrid(items: gridItemList1),
              const SizedBox(height: 35,),
              const Align(alignment: Alignment.topLeft,child: Text('Try our canine-crafted combos',style: TextStyle(color: Color(0XFF12121B),fontWeight: FontWeight.w500,fontSize: 18),)),
              const SizedBox(height: 20,),
              UserProductGrid(items: gridItemList2),
              const SizedBox(height: 20,),
               AuthButton(txt: "Continue", onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  SelectDeliveryDate(),));
               },)

            ],
          ),
        ),
      ),
    );
  }
}