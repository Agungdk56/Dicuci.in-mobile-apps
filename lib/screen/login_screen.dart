import 'package:dicuciin_1/controller/controller.dart';
import 'package:dicuciin_1/custom_icon_icons.dart';
import 'package:dicuciin_1/login_icon_icons.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xffF1F6F9),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  width: 1500,
                  height: 350,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(spreadRadius: BorderSide.strokeAlignInside)
                      ],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                          bottomRight: Radius.zero),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff62CDFF),
                            Color(0xff009FE9),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(
                        width: 140,
                        height: 50,
                        child: Text(
                          "Hemat waktu mu, Bersih barang mu",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: 200,
                        child: Image(
                            image: AssetImage(
                                "assets/images/logoDicuccinRotate.png")),
                      )
                    ],
                  ),
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        LoginIcon.mail,
                        size: 20,
                      ),
                      hintText: "Email address",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        LoginIcon.padlock,
                        size: 20,
                      ),
                      suffixIcon: const Icon(
                        LoginIcon.eyeslash,
                        size: 18,
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black26,
                          fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              CustomIcon.checkSquare,
                              size: 18,
                              color: Color(0xff009FE9),
                            ),
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xff62CDFF),
                        Color(0xff009FE9),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                    )),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 128),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 15)),
                        onPressed: () {
                          setState(() {});
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              )),
              const SizedBox(height: 5),
              const Center(child: Text("or")),
              const SizedBox(height: 5),
              Center(
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        minimumSize: const Size(300, 48),
                        backgroundColor: Colors.black),
                    icon: const Icon(LoginIcon.google),
                    label: const Text("Continue with Google")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(onPressed: () {}, child: const Text("Sign up"))
                ],
              )
            ],
          )),
    );
  }
}
