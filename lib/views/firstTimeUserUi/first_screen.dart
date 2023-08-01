import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/components/firstTimeUserComponents/first_component.dart';
import 'package:bruno/components/firstTimeUserComponents/steps.dart';
import 'package:bruno/views/firstTimeUserUi/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:bruno/components/homeComponents/paragraph_text.dart';
class FirstTimeUser extends StatefulWidget {
  const FirstTimeUser({super.key});

  @override
  State<FirstTimeUser> createState() => _FirstTimeUserState();
}

class _FirstTimeUserState extends State<FirstTimeUser> {
  int _currentStep = 0;
  int selectedButton = 0;
  int selectedButton2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create Account"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
          children: [
            StepUi(
              widget1:  const CircularProgressIndicator(), 
              widget2:  Container(), 
              widget3:  Container(), 
              firstColor:  const Color(0XFF2ED573), 
              secondColor:  const Color(0XFFE3E1E7),
              thirdColor:  const Color(0XFFE3E1E7)
              ),
            const SizedBox(height: 15,),
            const FirstComponent(
              heading: "Tell us about your pooch!", 
              paragraph: "Within a moment, we'll whip up a custom meal plan tailored to suit your doggo's unique needs"
              ),
            const Align(alignment: Alignment.centerLeft,child: Text("Pet Name",style: TextStyle(fontSize: 16),)),
            const SizedBox(height: 15,),
            const AuthTextField(hintText: "Labby"),
            const SizedBox(height: 25,),
            Container(
              width: double.infinity,
              height: 162.88,
              decoration: BoxDecoration(
                color: const Color(0XFFF8F8F9),
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0XFFEEEEF2),
                    child: Icon(Icons.camera_alt_rounded,color: Color(0XFF26324A),),
                  ),
                  SizedBox(height: 10,),
                  Text("Click to select photo",style: TextStyle(fontSize: 15,color: Color(0XFF26324A)),),
                  Text(".png . jpeg. max 1 MB file size",style: TextStyle(color: Color(0XFF26324A)),),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const ParagraphText(text: "Proud parent of multiple pups? We've got you covered! You can easily add more pet profiles to your account once you have finished signing up."),
            const SizedBox(height: 20,),
            const Align(alignment: Alignment.centerLeft,child: Text("Labby is a?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              myButton(
              "Boy", 
              () {setState(() {
                selectedButton = 0;
              });}, 
               selectedButton == 0 ? const Color(0XFFD78809):const Color(0XFFF1F0F3),
               selectedButton == 0 ? Colors.white: Colors.black,
               ),
              const SizedBox(width: 10,),
              myButton(
              "Girl", 
              () {setState(() {
                selectedButton = 1;
              });}, 
               selectedButton == 1 ? const Color(0XFFD78809):const Color(0XFFF1F0F3),
               selectedButton == 1 ? Colors.white: Colors.black,
               ),
              ],
            ),
              const SizedBox(height: 30,),
                const Align(alignment: Alignment.centerLeft,child: Text("Is Labby spayed/neutered?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              const SizedBox(height: 10,),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              myButton(
              "Yes", 
              () {setState(() {
                selectedButton2 = 0;
              });}, 
               selectedButton2 == 0 ? const Color(0XFFD78809):const Color(0XFFF1F0F3),
               selectedButton2 == 0 ? Colors.white: Colors.black,
               ),
              const SizedBox(width: 10,),
              myButton(
              "No", 
              () {setState(() {
                selectedButton2 = 1;
              });}, 
               selectedButton2 == 1 ? const Color(0XFFD78809):const Color(0XFFF1F0F3),
               selectedButton2 == 1 ? Colors.white: Colors.black,
               ),
              ],
            ),
              const SizedBox(height: 30,),
              AuthButton(txt: "Continue", onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),));
              })
          ],
            ),
        ),
      ),
    );
    
  }
  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 3 ?
        setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
        setState(() => _currentStep -= 1) : null;
  }

  Expanded myButton(String text,VoidCallback onTap,Color color ,Color textColor) {
    return Expanded(
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color
            ),
            child: Text(text,style: TextStyle(color: textColor),),
          ),
        ),
      );
  }
}

