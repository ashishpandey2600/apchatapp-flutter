import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
              // controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(hintText: "Username or Email"),
            ),
           const SizedBox(
              height: 20,
            ),
            TextField(
              // controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration:const InputDecoration(hintText: "Password"),
            ),
          const  SizedBox(
              height: 20,
            ),
            TextField(
              // controller: cnfpasswordcontroller,
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