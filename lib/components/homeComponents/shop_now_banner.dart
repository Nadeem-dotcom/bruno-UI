import 'package:flutter/material.dart';

class ShopNowBanner extends StatelessWidget {
  final String firstTxt;
  final String dogImage;
  const ShopNowBanner({super.key, required this.firstTxt, required this.dogImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 106,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0XFF442682),
            Color(0XFFCFBFF1),
          ]
          ),
        ),
        child:  Stack(
          children: [
            Positioned(
              top: 30,
              right: 0,
              child:Image.asset('assets/images/homeScreen/yellowPicture.png') 
            ),
            Positioned(
              top: 50,
              left: 130,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.05)
                ),
              ), 
            ),
            
            Positioned(
              bottom: 0,
              right: 0,
              child:Image.asset(dogImage) 
            ),
            
            Positioned(
              top: 20,
              left: 22,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(firstTxt ,style: const TextStyle(fontSize: 22,color: Colors.white),),
                  const SizedBox(height: 10,),
                  Container(
                    width: 69,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("View All",style: TextStyle(color: Color(0XFF6A330C)),),
                  ),

                ],
              ),
            ),
          ],
        ),
      );
  }
}