import 'package:flutter/material.dart';

class UserProductGrid extends StatelessWidget {
  final List items;
  const UserProductGrid({super.key, required this.items,});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio:  1/1.9,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30
      ), 
    itemBuilder: (context, index) {
      return Container(
      // height: 157.47,
      decoration: BoxDecoration(
      color: const Color(0XFFFFFFFF),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color(0XFFF1F0F3))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 108,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    const Color(0XFFD6D6D6).withOpacity(0.25),
                    const Color(0XFFFBB98B).withOpacity(0.25),
                  ] ),
              borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/images/homeScreen/food.png")),
                  const Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(Icons.info,color: Color(0XFFDDAE8C),))

                ],
              ),

            ),
            Text(items[index],style: const TextStyle(color: Color(0XFF000000),fontSize: 16,fontWeight: FontWeight.w600),),
            const SizedBox(height: 5,),
            const Text("High protein, grain-free,picky eater approved",style: TextStyle(color: Color(0XFF717171),fontSize: 13,),),
            const SizedBox(height: 10,),
            const Text("AED 100 / Plan",style: TextStyle(color: Color(0XFF6A330C),fontSize: 16,fontWeight: FontWeight.w500),),
            const SizedBox(height: 5,),
            const Text("complete trans period",style: TextStyle(color: Color(0XFF26324A),fontSize: 13,),),
          ],
        ),
      ),
    );
    },);
  }
}