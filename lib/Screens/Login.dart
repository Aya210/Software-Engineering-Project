import 'package:sw_app/AppBar.dart';
import 'package:sw_app/Presentation/ForgetPassword.dart';
import 'package:sw_app/Presentation/Register.dart';
import 'package:flutter/material.dart';
import 'package:sw_app/Presentation/Home.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController= TextEditingController();
  TextEditingController passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(automaticallyImplyLeading: false),
      body: Container(
        color: const Color(0xff5A4C90),
        child: Padding(
          padding:  const EdgeInsets.fromLTRB(30,0,30,0),
          child:
          Column( mainAxisAlignment: MainAxisAlignment.center
            ,children: [
              const Text('Welcome Back!', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700 ,
                color: Color(0xff00BCF1))),
              const SizedBox(height: 50),
              TextFormField(
                controller: nameController,
                decoration:  InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: const Color(0xffD9D9D9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    )
                ),validator: (t){
                if (t!.isEmpty) {
                  return "Please enter your username.";
                }
                return null;
              },
              ),
              const SizedBox(height: 30),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0)
                    ),
                    filled: true,
                    fillColor: const Color(0xffD9D9D9),
                ),
              ),
             Padding(padding: const EdgeInsets.only(left: 220.0),
            child:TextButton(
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const ForgetPassword()));
              },
              child: const Text('Forget?',
                style:  TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.w100)

                ),),),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register()));
              },color:  const Color(0xff00BCF1),
                  textColor:Colors.black,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text('Sign In'))
              ,
              const Text("Don't have an account?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400 ,
                    color: Color(0xffD9D9D9)),),
              TextButton(child: const Text("Sign Up",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700 ,
                  color:  Color(0xffD9D9D9),
                   )
              ,),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
              }
              )
            ],
          ),
        ),
      )

    );
  }
}
