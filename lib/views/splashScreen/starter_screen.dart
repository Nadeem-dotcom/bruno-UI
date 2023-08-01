import 'package:bruno/views/authUi/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class StarterScreen extends StatefulWidget {
  const StarterScreen({super.key});

  @override
  State<StarterScreen> createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,
      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,
      skip: const Text("Skip",style: TextStyle(color: Color(0XFF6A330C)),),
      next: const Text("Next",style: TextStyle(color: Color(0XFFD78809)),),
      done: const Text("Done"),
       dotsDecorator: DotsDecorator(
      size: const Size.square(10.0),
      activeSize: const Size(20.0, 10.0),
      activeColor: Theme.of(context).colorScheme.secondary,
      color:  const Color(0XFFD78809),
      spacing: const EdgeInsets.symmetric(horizontal: 3.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0)
      ),
      ),
      onDone: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
        
      },
      // baseBtnStyle: TextButton.styleFrom(
      //   backgroundColor: Colors.grey.shade200,
      // ),  
      skipStyle: TextButton.styleFrom(foregroundColor: Colors.red),  
      doneStyle: TextButton.styleFrom(foregroundColor: Colors.green),  
      nextStyle: TextButton.styleFrom(foregroundColor: Colors.blue),
      pages: [
        starterPages[0],
        starterPages[1],
        starterPages[2],
      ],
    );
  }



  
  List starterPages = [
    // First Starter Page
  PageViewModel(
    decoration: const PageDecoration(
      imagePadding: EdgeInsets.symmetric(vertical: 40)
    ),
    title: "Proud Parent of a Puppy?",
  bodyWidget:const Text(
    'Experience the Bruno\'s Kitchen difference with our trademarked Signature Nutrient Blend, cooked into every meal to fuel your Doggo\'s health and happiness.'
    ,textAlign: TextAlign.center,
  ) ,
  image: Image.asset('assets/images/introScreen/first.png'),
),

// Second Starter Page
  PageViewModel(
    decoration: const PageDecoration(
      imagePadding: EdgeInsets.symmetric(vertical: 20)
    ),
  title: "Craft Your Dogg’s Perfect Plan",
  bodyWidget:const Text(
    'Craft the perfect culinary journey for your doggo, where you can customize a meal plan as unique as your furry friend 🐶❤️'
    ,textAlign: TextAlign.center,
  ) ,
  image: Image.asset('assets/images/introScreen/Group.png'),
),


// Third Starter Page
  PageViewModel(
    decoration: const PageDecoration(
      imagePadding: EdgeInsets.symmetric(vertical: 20)
    ),
  title: "Effortless Convenience",
  bodyWidget:const Text(
    'Choose from several meal recipes. cooked, portioned and delivered your way, with whenever and wherever you need it.'
    ,textAlign: TextAlign.center,
  ) ,
  image: Image.asset('assets/images/introScreen/rider.png',scale: 1.3,),
),

];

}



