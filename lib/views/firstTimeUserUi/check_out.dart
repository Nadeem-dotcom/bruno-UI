import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/trackbar.dart';
import 'package:bruno/components/firstTimeUserComponents/card_map.dart';
import 'package:bruno/components/firstTimeUserComponents/first_bottom_sheet_component.dart';
import 'package:bruno/components/firstTimeUserComponents/second_bottom_sheet_component.dart';
import 'package:bruno/components/firstTimeUserComponents/steps.dart';
import 'package:bruno/components/homeComponents/heading_text.dart';
import 'package:bruno/views/firstTimeUserUi/add_credit_or_debit_cart.dart';
import 'package:flutter/material.dart';

import '../../components/authComponents/auth_button.dart';
import '../../components/homeComponents/paragraph_text.dart';

class CheckOut extends StatefulWidget {

  const CheckOut( {super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> with SingleTickerProviderStateMixin {
  late AnimationController bottomSheetController;
  late Animation bottomSheetSizeAnimation;
  int displaybottomSheetWidget = 0;
  bool couponButton = false;
  double lowerValue = 0;
  double upperValue = 0;


    @override
  void initState() {
    super.initState();
    bottomSheetController = AnimationController(vsync: this,duration: const Duration(milliseconds: 500));
    bottomSheetSizeAnimation = Tween<double>(begin: 0,end: 0).animate(bottomSheetController);


    bottomSheetSizeAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (displaybottomSheetWidget == 0) {
          displaybottomSheetWidget = 1;
        }else if (bottomSheetSizeAnimation.value == 400) {
          displaybottomSheetWidget = 2;
        }
      }
    });

  
  } 
  @override
  void dispose() {
    bottomSheetController.dispose();    
    super.dispose();
  }
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
              const HeadingText(txt: "Checkout"),
              const SizedBox(height: 10,),
              const ParagraphText(text: "You’re just two clicks away to serve up the finest meals tailored for your fluffy companion's ultimate joy"),
              const SizedBox(height: 20,),
              const CardMapLocation(),
              const SizedBox(height: 10,),
              const UserPaymentInMapPage(),
              const SizedBox(height: 10,),
              const Subtotal(),
              const SizedBox(height: 30,),
              const PawPoints(),
              const SizedBox(height: 30,),
               EnterPromoCode(onTap: () {
                bottomSheetSizeAnimation = Tween<double>(begin: 0,end: 200).animate(bottomSheetController);
                bottomSheetController.forward();
              },),
            ],
          ),
        ),
      ),
   
   
      bottomSheet: AnimatedBuilder(
        animation: bottomSheetSizeAnimation, 
        builder: (context, child) {
          return Container(
                width: MediaQuery.of(context).size.width,
                 height: bottomSheetSizeAnimation.value,
                decoration:   BoxDecoration(
                color: const Color(0XFFFFFFFF),
                borderRadius: const  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              
                ),
                child: (() {
                  if (displaybottomSheetWidget == 1) {
                    return FirstBSComponent(
                      button: bottomSheetFirstWidget()
                    );
                  }else if (displaybottomSheetWidget == 2) {
                    return SecondBSComponent(
                      iconButton: bottomSheetIconButton(),
                      slider: rangeSlider(),
                      button: AuthButton(txt: 'Use the promo code', onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCreditOrDebitCard(),));
                      }),
                      );
                  }
                    }())
              );
        },)

    );
  }

  

Widget bottomSheetFirstWidget() {
  return AuthButton(
        txt: "Continue", 
        onTap: () {
        displaybottomSheetWidget = 3;
        bottomSheetController.reset();
        bottomSheetSizeAnimation = Tween<double>(
        begin: bottomSheetSizeAnimation.value,
        end:400).animate(bottomSheetController);
      bottomSheetController.forward();
        },); 
}

 bottomSheetIconButton() {
  return   (){
        // bottomSheetController.reset();
        bottomSheetSizeAnimation = Tween<double>(
      begin: 0,
      end:0
    ).animate(bottomSheetController);
    // bottomSheetController.forward();
    displaybottomSheetWidget = 0;
    bottomSheetController.reset();

    }; 
}




 rangeSlider() {
    return  FlutterSlider(
      values: const [250],
      max: 500,
      min: 0,
      
      onDragging: (handlerIndex, lowerValue, upperValue) {
        lowerValue = lowerValue;
        upperValue = upperValue;},

        trackBar: FlutterSliderTrackBar(
      inactiveTrackBar: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0XFF26324A),
      ),
      activeTrackBarHeight: 11,
      inactiveTrackBarHeight: 11,
      activeTrackBar: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0XFFD78809)
      ),
    ),
    handler: FlutterSliderHandler(
    decoration: const BoxDecoration(),
    child: Material(
      borderRadius: BorderRadius.circular(10),
      type: MaterialType.canvas,
      color: Colors.orange,
      elevation: 3,
      child: const SizedBox(
        width: 9,
        height: 23,
      ),
    ),
  ),
);
  }

}

