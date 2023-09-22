import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnfpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(hintText: "Username or Email"),
            ),
           const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration:const InputDecoration(hintText: "Password"),
            ),
          const  SizedBox(
              height: 20,
            ),
            TextField(
              controller: cnfpasswordcontroller,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(hintText: "Confirm Password"),
            ),
            CupertinoButton(child: const Text("signup"), onPressed: () {}),
            Row(
              children: [
                const Text("Already have an account"),
                InkWell(onTap: () {

                }, child: const Text("Login"))
              ],
            )
          ],
        ),
      )),
    );
  }
}
