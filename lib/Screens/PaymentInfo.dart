import 'package:flutter/material.dart';

class PaymentInfo extends StatefulWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  @override
  State<PaymentInfo> createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SafeArea(
        child: Container(
          padding: const EdgeInsetsDirectional.only(start: 14),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Center(
                child: Text("Payment Information",
                   style: TextStyle(
                     color: Color(0xFF00bcf1),
                       fontSize: 30,
                       fontWeight: FontWeight.w600,
                       fontFamily: 'Inter')),
              ),
              const SizedBox(height: 24),
              const Text("Select a Payment Method:",
              style: TextStyle(
                  color: Color(0xFFd9d9d9),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter'),
                  textAlign: TextAlign.left),
              const SizedBox(height: 24),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 394,
                height:70,
                child: ElevatedButton(
                  onPressed:(){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                  child: const Text("Cash on Delivery",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize:28))),
              ),
              const SizedBox(height: 24),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 394,
                height:70,
                child: ElevatedButton(
                    onPressed:(){},
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                    ),
                    child: const Text("Add a Credit Card",
                        style: TextStyle(
                          color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                            fontSize:28),
                    textAlign: TextAlign.left,)),
              )
            ]))));
  }
}
