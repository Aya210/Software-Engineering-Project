import 'package:flutter/material.dart';

import 'Home.dart';
import 'Loading.dart';
import 'Signup.dart';
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
      appBar: AppBar(
        title: const Text('Login',style: TextStyle(color: Colors.white70),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column( mainAxisAlignment: MainAxisAlignment.center
          ,children: [const Text('Login',style: TextStyle(fontSize: 50,color: Colors.indigo)),
            const SizedBox(height: 25),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: 'Username',
                  labelText: 'Username',
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person)
              ),validator: (t){
              if (t!.isEmpty) {
                return "Please enter your username.";
              }
              return null;
            },
            ),
            const SizedBox(height: 25),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.lock)
              ),
            ),
            const SizedBox(height: 25),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
            },color: Colors.indigo,textColor:Colors.white70, child: const Text('Login'))
            ,

            TextButton(child: const Text('I do not have an account',style:TextStyle(color: Colors.indigo) ),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register()));
            }
            )
          ],
        ),
      ),

    );
  }
}