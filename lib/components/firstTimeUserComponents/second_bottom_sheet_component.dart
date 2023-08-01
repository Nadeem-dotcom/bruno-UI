import 'package:flutter/material.dart';

class SecondBSComponent extends StatelessWidget {
  final Widget slider;
  final VoidCallback iconButton;
  final Widget button;
  const SecondBSComponent({super.key, required this.iconButton, required this.slider, required this.button});

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
   children: [
     const SizedBox(height: 10,),
     SecondBottomSheetComponent(
      first: const Text("Redeem PawPoints",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0XFF26324A)),), 
      second: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0XFFF1F0F3))
          ),
          child: IconButton(onPressed: iconButton,
          icon: const Icon(Icons.close,)),
        ),
      ),
     const Text("you can use your loyalty points  to get discount, by converting your loyalty points to % discount coupon"),
    slider,
    const SecondBottomSheetComponent(
      first:  Text('400',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF000000)),), 
      second: Text('7999 Point',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF000000)),), 
      ),
      const SizedBox(height: 10,),
      const Text("Promo Code",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0XFF000000)),),
      const SizedBox(height: 15,),
      Container(
        width: double.infinity,
        height: 43,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: const Color(0XFFF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ME423DW",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF000000)),),
            Text("Copy",style: TextStyle(color: Color(0XFF6A330C),fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      const Spacer(),
      button
   ],
   ),
    );
  }
   
}







class SecondBottomSheetComponent extends StatelessWidget {
  final Widget first;
  final Widget second;
  const SecondBottomSheetComponent({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        first,
        second,
      ],
     );
  }
}