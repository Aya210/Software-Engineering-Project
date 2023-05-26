import 'package:sw_app/AppBar.dart';
import 'package:sw_app/Presentation/Login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameControllerR = TextEditingController();
  TextEditingController emailControllerR = TextEditingController();
  TextEditingController passwordControllerR = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(automaticallyImplyLeading: true),
        body: Container(
          color: const Color(0xff5A4C90),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30,0,30,0),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const Text('Create New Account',
                  style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.w700 ,
                      color: Color(0xff00BCF1))),
              const SizedBox(height: 50),
              TextFormField(
                controller: nameControllerR,
                decoration: InputDecoration(
                    hintText: 'Full name',
                    filled: true,
                    fillColor: const Color(0xffD9D9D9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0)
                    )
                ),
                validator: (t) {
                  if (t!.isEmpty) {
                    return "Please enter your username.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: emailControllerR,
                decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                   fillColor: const Color(0xffD9D9D9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    )

                ),
                validator: (t) {
                  if (t!.isEmpty) {
                    return "Please enter your password.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                obscureText: true,
                controller: passwordControllerR,
                decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                  fillColor: const Color(0xffD9D9D9),
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27.0)
                    ),
              ),),
              const SizedBox(height: 25),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
              },color:  const Color(0xff00BCF1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  textColor:Colors.black, child: const Text('Sign Up'))
                  ,
                  const Text("Have an account?",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400 ,
                        color: Color(0xffD9D9D9)),),
                  TextButton(child: const Text("Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700 ,
                      color:  Color(0xffD9D9D9),
                    )
                    ,),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                  }
              ),
              ]),
          ),
        ));
  }
}
