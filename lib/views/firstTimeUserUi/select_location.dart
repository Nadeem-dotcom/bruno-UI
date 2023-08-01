import 'package:bruno/views/firstTimeUserUi/delivery_details.dart';
import 'package:flutter/material.dart';

import '../../components/authComponents/auth_button.dart';
import '../../components/firstTimeUserComponents/steps.dart';
import '../../components/homeComponents/heading_text.dart';
import '../../components/homeComponents/paragraph_text.dart';

class SelectLocation extends StatefulWidget {

  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  TextEditingController addressController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  String userName = '';

  String userLocation = '';
  @override
  void dispose() {
    addressController.dispose();
    userNameController.dispose();
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
              widget2:  const CircularProgressIndicator(), 
              widget3:  Container(), 
              firstColor:  const Color(0XFF2ED573), 
              secondColor:  const Color(0XFF2ED573),
              thirdColor:  const Color(0XFFE3E1E7)
              ),
              const SizedBox(height: 30,),
              const HeadingText(txt: "Enter Your Address"),
              const SizedBox(height: 10,),
              const ParagraphText(text: "Order by 4pm to receive your doggies dishes between 9am- 12noon the following day"),
              const SizedBox(height: 20,),
              TextField(
              controller: userNameController,
              style: const TextStyle(color: Color(0XFF878787)),
              onChanged: (value) {
                userName = value;
              },
              decoration: InputDecoration(
                hintText: "Name",
                hintStyle: const TextStyle(color: Color(0XFF878787)),
                prefixIconColor: const Color(0XFF878787),
                fillColor: const Color(0XFFF8F8F9),
                filled: true,
                constraints: const BoxConstraints(maxHeight: 45,),
                enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0XFFF8F8F9),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0XFFF8F8F9),
                  )
                ),
              ),
            ),
              const SizedBox(height: 15,),
              TextField(
              controller: addressController,
              style: const TextStyle(color: Color(0XFF878787)),
              onChanged: (value) {
                userLocation = value;
              },
              decoration: InputDecoration(
                hintText: "Your address",
                hintStyle: const TextStyle(color: Color(0XFF878787)),
                prefixIconColor: const Color(0XFF878787),
                fillColor: const Color(0XFFF8F8F9),
                filled: true,
                constraints: const BoxConstraints(maxHeight: 45,),
                enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0XFFF8F8F9),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0XFFF8F8F9),
                  )
                ),
              ),
            ),

              const SizedBox(height: 20,),

               AuthButton(txt: "Confirm Your Location", onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  DeliveryDetails(userAddress: userLocation,userName: userName),));
               },)

            ],
          ),
        ),
      ),
    );
  }

  TextField locationTextField (TextEditingController controller,String hintText,String saveData) {
    return TextField(
              controller: controller,
              style: const TextStyle(color: Color(0XFF878787)),
              onChanged: (value) {
                saveData = value;
              },
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(color: Color(0XFF878787)),
                prefixIconColor: const Color(0XFF878787),
                fillColor: const Color(0XFFF8F8F9),
                filled: true,
                constraints: const BoxConstraints(maxHeight: 45,),
                enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0XFFF8F8F9),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0XFFF8F8F9),
                  )
                ),
              ),
            );
  }
}

