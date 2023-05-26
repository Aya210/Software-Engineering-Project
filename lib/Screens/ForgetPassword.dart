import 'package:flutter/material.dart';
import 'package:sw_app/AppBar.dart';
import 'package:sw_app/Presentation/Login.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController passwordControllerF = TextEditingController();

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
              const Text(
                'Forget Password',
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.w700 ,
                    color: Color(0xff00BCF1)),
              ),
              const Text('Enter New Password',
                style: TextStyle(fontSize: 28,
                    fontWeight: FontWeight.w500 ,
                    color: Color(0xff00BCF1)),),
              const SizedBox(height: 25),
              TextFormField(
                controller: passwordControllerF,
                decoration: InputDecoration(
                  hintText: 'New Password',
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0)
                  ),
                  filled: true,
                  fillColor: const Color(0xffD9D9D9),
                ),
                validator: (t) {
                  if (t!.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                obscureText: true,
                controller: passwordControllerF,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0)
                  ),
                  filled: true,
                  fillColor: const Color(0xffD9D9D9),
                ),
              ),
              const SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                },
                color: const Color(0xff00BCF1),
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Text('Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
