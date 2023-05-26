import 'package:sw_app/Presentation/Login.dart';
import 'package:flutter/material.dart';
import '../Utils/ImagesE.dart';
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
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Image.asset(ImagesE.logoE,height: 250,width: 250,),
              const SizedBox(height: 15.0),
                    const CircularProgressIndicator()
                ],
              ),)
          )
    ;
  }
}
