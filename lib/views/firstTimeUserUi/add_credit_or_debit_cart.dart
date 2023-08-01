import 'package:bruno/components/authComponents/auth_text_field.dart';
import 'package:bruno/components/authComponents/auth_button.dart';
import 'package:bruno/components/homeComponents/heading_text.dart';
import 'package:bruno/components/homeComponents/paragraph_text.dart';
import 'package:bruno/views/firstTimeUserUi/order_confirmed.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

import '../../components/firstTimeUserComponents/steps.dart';

class AddCreditOrDebitCard extends StatefulWidget {
  const AddCreditOrDebitCard({super.key});

  @override
  State<AddCreditOrDebitCard> createState() => _AddCreditOrDebitCardState();
}

class _AddCreditOrDebitCardState extends State<AddCreditOrDebitCard> {
   List<DateTime?> dates = [
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
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
              const HeadingText(txt: "Add a Credit or Debit Card"),
              const SizedBox(height: 10,),
              const ParagraphText(text: "Order before 10 pm to get order"),
              const SizedBox(height: 40,),
              const AuthTextField(hintText: "Card number", icon: Icon(Icons.credit_card),),
              const SizedBox(height: 20,),
              const AuthTextField(hintText: "Full name", icon: Icon(Icons.person),),
              const SizedBox(height: 20,),
              addressField('CVV',const Icon(Icons.abc),() => selectDate()),
              const SizedBox(height: 10,),
              switchButton(),
              const SizedBox(height: 40,),
               AuthButton(txt: " Save and Continue", onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderConfirmed(),));
               },),
              const SizedBox(height: 10,),
        
            ],
          ),
        ),
      ),
    );
  }


  selectDate () async{
    var results = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
        selectedDayHighlightColor: const Color(0XFFD78809),
        calendarType: CalendarDatePicker2Type.single,
      ),
      dialogSize: const Size(325, 400),
      value: dates,
      borderRadius: BorderRadius.circular(15),
    );
    if (results != null) {
        setState(() {
          dates = results;
        });
    }
  }

  String dateFormating() {
    String date = dates[0]!.day.toString();
    String month = dates[0]!.month.toString();
    String year = dates[0]!.year.toString();
    return "$date-$month-$year";
  }

Row addressField(String txt,Icon icon1, VoidCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: AuthTextField(hintText: txt,icon: icon1),
            ),const SizedBox(width:8,),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Container(
                width: 20,
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                color: const Color(0XFFF8F8F9),
                borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_month_outlined,color: Color(0XFF878787),),
                    const SizedBox(width: 10,),
                    Text(dateFormating(),style: const TextStyle(color: Color(0XFF878787)),)
                  ],
                ),
              ),
            ),
          ),
          ],
          );
  }



  Row switchButton () {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     const Text("Set default address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0XFF26324A)),),
     Switch(
      activeTrackColor: const Color(0XFFD78809),
      activeColor: Colors.white,
     value: true, onChanged:(value) {
     },)
      ],
     );
  }
}