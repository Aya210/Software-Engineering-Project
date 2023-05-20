import 'package:flutter/material.dart';
import 'Login.dart';

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
        appBar: AppBar(
          title: const Text(
            'Register',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Register',
                style: TextStyle(fontSize: 50, color: Colors.indigo)),
            const SizedBox(height: 25),
            TextFormField(
              controller: nameControllerR,
              decoration: const InputDecoration(
                  hintText: 'Username',
                  labelText: 'Username',
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person)),
              validator: (t) {
                if (t!.isEmpty) {
                  return "Please enter your username.";
                }
                return null;
              },
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: emailControllerR,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.email)),
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
              decoration: const InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.lock)),
            ),
            const SizedBox(height: 25),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
            },color: Colors.indigo,textColor:Colors.white70, child: const Text('Register') ),
          ]),
        ));
  }
}