import 'package:flutter/material.dart';

class BottomSlider extends StatelessWidget {
  final String discount;
  final String imagePath;
  final String productName;
  final String price;

  const BottomSlider({super.key, required this.discount, required this.imagePath, required this.productName, required this.price,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 206,
      margin: const EdgeInsets.all(5),
      decoration:  BoxDecoration(
      color: const Color(0XFFFFFFFF),
      borderRadius: BorderRadius.circular(35)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 108,
            margin: const EdgeInsets.all(5),
            decoration:  BoxDecoration(
            color: const Color(0XFFDADADA),
            borderRadius: BorderRadius.circular(30)
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 7,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                    decoration: BoxDecoration(
                    color: const Color(0XFFEA5B5B),
                    borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("$discount% Off",style: const TextStyle(fontSize: 10,color: Color(0XFFFFFFFF)),),
                  ),
                ),
                Positioned(
                  child: Center(child: Image.asset(imagePath)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child:  Text(productName,style: const TextStyle(color: Color(0XFF000000),fontWeight: FontWeight.w400,fontSize: 16),),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 7,bottom: 18),
            child:  Text("AED $price",style: const TextStyle(color: Color(0XFF7F3F11),fontWeight: FontWeight.bold,fontSize: 16),),
          ),
        ],
      ),
    );
  }
}