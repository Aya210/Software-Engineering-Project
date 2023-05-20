import 'package:flutter/material.dart';

import 'Login.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/images/logoE.jpg',height: 250,width: 250,
        ),
      ),
    )
    ;
  }
  }

