import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mynotes/pages/home.dart';
import 'package:mynotes/pages/login.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 251, 234),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Icon(
                  Icons.person_add,
                  size: 100,
                  color: Colors.deepPurple,
                  shadows: [
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 3,
                      color: Colors.deepPurple.withOpacity(0.5),
                      offset: Offset(3.0, 3.0),
                    ),
                  ],
                ),
              ),
              "Create your Account".text.extraBold.xl4.make(),
              60.heightBox,
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Name",
                        icon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* required field";
                        }
                        return null;
                      },
                    ).pLTRB(12, 12, 12, 12),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Phone Number",
                        icon: Icon(Icons.phone_android),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* required field";
                        }
                        return null;
                      },
                    ).pLTRB(12, 12, 12, 12),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Email ID",
                        icon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* required field";
                        }
                        return null;
                      },
                    ).pLTRB(12, 12, 12, 12),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your desired password",
                        icon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* required field";
                        }
                        return null;
                      },
                    ).pLTRB(12, 12, 12, 12),
                    ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                                (route) => false);
                          }
                        },
                        child: "Sign Up"
                            .text
                            .color(Color.fromARGB(255, 254, 251, 234))
                            .bold
                            .make())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
