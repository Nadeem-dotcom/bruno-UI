import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final String firstTxt;
  final String secondTxt;
  final String thirdTxt;
  final String dogImage;
  const HomeSlider({super.key, required this.firstTxt, required this.secondTxt, required this.thirdTxt, required this.dogImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 182,
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
              bottom: 0,
              left: 120,
              child:Image.asset('assets/images/homeScreen/second.png') 
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child:Image.asset('assets/images/homeScreen/yellowPicture.png') 
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child:Image.asset(dogImage) 
            ),
            Positioned(
              bottom: 0,
              right: 70,
              child:Image.asset('assets/images/homeScreen/Daco_46496201.png') 
            ),
            
            Positioned(
              top: 20,
              left: 22,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(firstTxt ,style: const TextStyle(fontSize: 22,color: Colors.white),),
                  Text(secondTxt,style: const TextStyle(fontSize: 22,color: Colors.white),),
                  Text(thirdTxt,style:  const TextStyle(fontSize: 22,color: Colors.white),),
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