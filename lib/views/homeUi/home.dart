// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/components/homeComponents/grid_view_components.dart';
import 'package:bruno/components/homeComponents/bottom_slider.dart';
import 'package:bruno/components/homeComponents/footer_expansion_list.dart';
import 'package:bruno/components/homeComponents/heading_text.dart';
import 'package:bruno/components/homeComponents/home_grid.dart';
import 'package:bruno/components/homeComponents/home_slider.dart';
import 'package:bruno/components/homeComponents/page_indicator.dart';
import 'package:bruno/components/homeComponents/paragraph_text.dart';
import 'package:bruno/components/homeComponents/process.dart';
import 'package:bruno/components/homeComponents/shop_now_banner.dart';
import 'package:bruno/views/firstTimeUserUi/first_screen.dart';
import 'package:bruno/views/homeUi/gridItem_list.dart';
import 'package:flutter/material.dart';

import 'home_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  List sliderItems = [
    // First        Second      Thirs       ImagePath
    ["Science.","Convenience","And Love.",'assets/images/homeScreen/pngwing1.png'],
    ["Second.","Convenience","And Love.",'assets/images/homeScreen/pngwing1.png'],
    ["Third.","Convenience","And Love.",'assets/images/homeScreen/pngwing1.png'],
  ];
  // Home Slider 
  int currentPageIndex = 0;

  List bottomSliderItems = [
    // discount   imagePath productName  price
    ['24',"assets/images/homeScreen/pro3.png","Wishbone Bacon Chew Toy For Dogs","60"],
    ['50',"assets/images/homeScreen/pro4.png","Extra Durable Rabbit Toy","80"],
    ['30',"assets/images/homeScreen/pro5.png","Wishbone Bacon Chew Toy For Dogs","60"],
    ['20',"assets/images/homeScreen/pro3.png","Extra Durable Rabbit Toy","100"],
  ];

  // Bottom Navigation Bar
  int selectedIndex = 0;
  onChangeIndex (int index) {
    setState(() {
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Todo AppBar
               homeWidgets[0],
                // Todo Slider
                SizedBox(height: 20,),
                slider(),
                SizedBox(height: 15,),
                  CustomPageIndicator(
                    itemCount: sliderItems.length, 
                    currentIndex: currentPageIndex, 
                    activeColor: Color(0XFFD78809), 
                    inactiveColor: Color(0XFFD78809).withOpacity(0.3)
                    ),
                SizedBox(height: 20,),
                // Todo Heading Text
                HeadingText(txt: homeFirstHeading),
                SizedBox(height: 18,),
                // Todo Paragraph Text
                ParagraphText(text: homeFirstParagraph),
                // Todo Grid
                SizedBox(height: 10,),
                HomeGrid(
                  itemCount: gridCata.length, 
                  function: (context, index) {
                    return GridViewComponents(
                      name: gridCata[index][0],
                      imagePath: gridCata[index][1],);
                  },),
                // Todo Heading Text
                SizedBox(height: 30,),
                HeadingText(txt: 'Dive into a World of Paw-licking Goodness'),
                // Todo Paragraph Text
                SizedBox(height: 18,),
                ParagraphText(text: 'Check out our delicious doggie dishes'),
                // Todo Grid
                SizedBox(height: 10,),
                HomeGrid(
                  itemCount: food.length, 
                  function: (context, index) {
                    return GridViewComponents(
                      name: food[index][0],
                      imagePath: food[index][1],);
                  },),
                // Todo Button
                SizedBox(height: 20,),
                AuthButton(txt: "Design Your Doggo's Delicious Diet Now", onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstTimeUser(),));
                },),
                SizedBox(height: 20,),
                HeadingText(txt: 'Our Pawfect Process'),
                // Todo Detail
                SizedBox(height: 16,),
                Process(heading: pawfectFirstHeading,paragraph: pawfectFirstParagraph,no: '1',),
                Process(heading: pawfectSecondHeading,paragraph: pawfectSecondParagraph,no: '2',),
                Process(heading: pawfectThirdHeading,paragraph: pawfectThirdParagraph,no: '3',),

                SizedBox(height: 20,),
                // Todo Shop Now Banner
                ShopNowBanner(firstTxt: 'Toys & Treats', 
                dogImage: "assets/images/homeScreen/shopnow1.png"),
                SizedBox(height: 20,),
                // Todo Botton Slider
                
                SizedBox(
                  width: double.infinity,
                  height: 230,
                  child: ListView.builder(
                    
                    itemCount: bottomSliderItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      // discount   imagePath productName  price
                      return BottomSlider(
                           discount: bottomSliderItems[index][0], 
                           imagePath: bottomSliderItems[index][1], 
                           productName: bottomSliderItems[index][2], 
                           price: bottomSliderItems[index][3],
                          );
                    },),
                ),
                // Todo Footer
                SizedBox(height: 20,),
                HeadingText(txt: "Frequently asked questions"),

                ListView.builder(
                  itemCount: footerHeadings.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return FooterExpansionList(
                      heading: footerHeadings[index], 
                      paragraph: footerParagraph,
                  );
                  },
                  ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0XFFF2F7F9),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,
        selectedItemColor: Color(0XFFD78809),
        unselectedItemColor: Color(0XFF979797),
        onTap: (value) {
          onChangeIndex(value);
        },
        items: [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Setting",icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.person)),
        ],
        backgroundColor: Color(0XFFFFFFFF),
        ),
    );
  }




 List<Widget> homeWidgets = [
  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("LOCATION",style: TextStyle(color: Color(0XFF7B4CDF)),),
                Icon(Icons.arrow_drop_down,color: Color(0XFF7B4CDF),)
              ],
            ),
            Text('46 Larkrow, London',style: TextStyle(color: Color(0XFF071731)),)
          ],
        ),
        CircleAvatar(
          backgroundColor: Color(0XFFFFFFFF),
          radius: 25,
          child: Icon(Icons.card_travel,color: Color(0XFF6A330C),),
        )
      ],
    ),
 
  
 ];

SizedBox slider() {
  return SizedBox(
    height: 182,
    child: PageView.builder(
      itemCount: sliderItems.length,
      pageSnapping: true,
      onPageChanged: (value) {
        setState(() {
          currentPageIndex = value;
        });
      },
      itemBuilder: (context,pagePosition){
      return HomeSlider(
            firstTxt: sliderItems[pagePosition][0], 
            secondTxt: sliderItems[pagePosition][1], 
            thirdTxt: sliderItems[pagePosition][2], 
            dogImage: sliderItems[pagePosition][3]
            );
    }),
  );
}
}