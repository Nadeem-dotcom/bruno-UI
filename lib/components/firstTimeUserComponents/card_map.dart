import 'package:bruno/components/homeComponents/heading_text.dart';
import 'package:flutter/material.dart';

class CardMapLocation extends StatelessWidget {
  const CardMapLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.3,
        decoration: BoxDecoration(
        color: const Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0XFFF1F0F3))
        ),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.location_on_outlined,color: Color(0XFFFFCA00),),
              title: Text("Delivery Address"),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset("assets/images/firstTimeUser/Map.png",fit: BoxFit.cover,),
              ),
            ),
            const ListTile(
              title:  Text("Mina Jeble Ali"),
              subtitle:  Text("Dubai UAE"),
              trailing: Icon(Icons.edit,color: Color(0XFFFFCA00),),
            ),
          ],
        ),
      );
  }
}


class UserPaymentInMapPage extends StatelessWidget {
  const UserPaymentInMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color(0XFFFFFFFF),
      shadowColor: Color(0XFFF1F0F3),
      child: ListTile(
        leading: Icon(Icons.payment_outlined),
        title:  Text("Payment Method"),
        trailing: Icon(Icons.edit,color: Color(0XFFFFCA00),),
      ),
    );
  }
}

class Subtotal extends StatelessWidget {
  const Subtotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0XFFF1F0F3)),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.all(12.0),
            child: HeadingText(txt: "Order Summary"),
          ),
          const Divider(
            color: Color(0XFFF1F0F3),
            thickness: 1,
          ),
          rowWidget("Subtotal","AED 100"),
          rowWidget("Shipping Fee","10 AED ",value2: "(One Time Fee)"),
        ],
      ),
    );
  }

  Padding rowWidget (String key, String value, {String? value2} ) {
    return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(key,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                Row(
                  children: [
                    Text(value,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    if (value2 != null)Text(value2,style: const TextStyle(color: Color(0XFF888888),fontSize: 15,fontWeight: FontWeight.w500),),
                  ],
                ),
              ],
            ),
          );
  }
}


class PawPoints extends StatelessWidget {
  const PawPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color(0XFFF1F0F3))
      ),
      // padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset('assets/images/firstTimeUser/coin.png'),
        title: const Text("Your accumulated Paw Points",style: TextStyle(color: Color(0XFF6A330C),fontSize: 12),),
        subtitle: const Text("64468",style: TextStyle(color: Color(0XFF26324A)),),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}



class EnterPromoCode extends StatelessWidget {
  final Color? color;
  final VoidCallback onTap;
  const EnterPromoCode({super.key, this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color(0XFFF1F0F3))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Enter your Promo code here",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0XFF26324A)),),
          const SizedBox(height: 10,),
          const Text("You can only use your PawPoints or a Promo Code per transaction. Promo codes are one-time use only.",style: TextStyle(fontSize: 14,color: Color(0XFF26324A)),),
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Generate coupon code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Color(0XFF000000)),),
              Text("HOW IT WORKS?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Color(0XFFFFCA00)),),
            ],
          ),
          const SizedBox(height: 10,),
          const Card(
            color: Color(0XFFF8F8F9),
            child: ListTile(
              leading: Icon(Icons.card_giftcard_rounded),
              title: Text('ME432DW'),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: color ?? Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0XFFF1F0F3)),
              ),
              child: const Text("Apply coupon code",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}