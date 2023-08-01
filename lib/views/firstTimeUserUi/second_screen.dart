import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/components/firstTimeUserComponents/select_payment_plan.dart';
import 'package:bruno/components/firstTimeUserComponents/steps.dart';
import 'package:bruno/components/homeComponents/heading_text.dart';
import 'package:bruno/views/firstTimeUserUi/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Color activePaymentMethodColor = const Color(0XFFD78809);
  Color inActivePaymentMethodColor = const Color(0XFFDDEAF3);
  int selectPaymentMethodIndex = 1;

  paymentSelection (int index) {
    setState(() {
      selectPaymentMethodIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Choose your plan"),
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
              const HeadingText(txt: "Create a paw-licking good meal plan for Labby"),
              const SizedBox(height: 20,),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => paymentSelection(1),
                child: SelectPaymentPlan(
                  headText: "Transitional Plan", 
                  decsText: "For all first-timers, select this plan to smoothly transition your doggo to Bruno’s recipes and once your transition period ends, you’ll get access to more recipe choices to delight your doggo's tastebuds", 
                  imagePath: "assets/images/firstTimeUser/card1.png", 
                  borderColor: selectPaymentMethodIndex == 1 ? const Color(0XFFD78809) : const Color(0XFFDDEAF3),
                  ),
              ),
              const SizedBox(height: 20,),
               InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => paymentSelection(2),
                 child: SelectPaymentPlan(
                  headText: "Monthly Plan", 
                  decsText: "Opt for this plan for a budget-friendly, wholesome meal journey for your pup. Enjoy the liberty to pick up to three diverse meal options per month to spoil your best friend with variety", 
                  imagePath: "assets/images/firstTimeUser/Calendar.png", 
                  borderColor:  selectPaymentMethodIndex == 2 ? const Color(0XFFD78809) : const Color(0XFFDDEAF3)
                  ),
               ),
              const SizedBox(height: 20,),
               InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => paymentSelection(3),
                 child: SelectPaymentPlan(
                  headText: "One-time Order", 
                  decsText: "Not sure if you or your doggie are ready to commit? That’s okay! Select from our array of scrumptious meals and let your doggie be the judge. Get ready for them to ‘woof’ it down begging for more!", 
                  imagePath: "assets/images/firstTimeUser/Calendar2.png", 
                  borderColor:  selectPaymentMethodIndex == 3 ? const Color(0XFFD78809) : const Color(0XFFDDEAF3)
                  ),
               ),
               const SizedBox(height: 20,),
               AuthButton(txt: "Continue", onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdScreen(),));
               },)

            ],
          ),
        ),
      ),
    );
  }
}