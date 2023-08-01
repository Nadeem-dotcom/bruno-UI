import 'package:bruno/views/firstTimeUserUi/select_location.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

import '../../components/authComponents/auth_button.dart';
import '../../components/firstTimeUserComponents/steps.dart';
import '../../components/homeComponents/heading_text.dart';
import '../../components/homeComponents/paragraph_text.dart';

// ignore: must_be_immutable
class SelectDeliveryDate extends StatelessWidget {
   SelectDeliveryDate({super.key});

  List<DateTime?> _dates = [
    DateTime.now(),
  ];

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
              widget2:  const CircularProgressIndicator(), 
              widget3:  Container(), 
              firstColor:  const Color(0XFF2ED573), 
              secondColor:  const Color(0XFF2ED573),
              thirdColor:  const Color(0XFFE3E1E7)
              ),
              const SizedBox(height: 30,),
              const HeadingText(txt: "Select Your Delivery Date"),
              const SizedBox(height: 10,),
              const ParagraphText(text: "Order by 4pm to receive your doggies dishes between 9am- 12noon the following day"),
              const SizedBox(height: 20,),

              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  selectedDayHighlightColor: const Color(0XFFD78809),
                    calendarType: CalendarDatePicker2Type.single,
                ),
                value: _dates,
                onValueChanged: (dates) => _dates = dates,
              ),
              const SizedBox(height: 20,),

              const Text("Great! Now tell us where we will be delivering our tail-wagging meals",textAlign: TextAlign.center,style: TextStyle(color: Color(0XFF6A330C)),),
              const SizedBox(height: 20,),
               AuthButton(txt: "Continue", onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const SelectLocation(),));
               },)

            ],
          ),
        ),
      ),
    );
  }
}