import 'package:dicuciin_1/login_icon_icons.dart';
import 'package:dicuciin_1/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 60, left: 5),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const LoginScreen()));
                        });
                      },
                      icon: const Icon(Icons.arrow_back))),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 26),
                child: const Text(
                  "Create new account",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 30),
                width: 340,
                height: 35,
                child: const Text(
                  "Create your account, it takes less than a minute. Enter your username, email and password",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black45,
                      fontSize: 12),
                ),
              ),
              const SizedBox(height: 17),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: const Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Alexander Magt",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Alexa.margareth19@gmail.com",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: const Text(
                  "Phone No.",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "+6281311671161",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        LoginIcon.eyeslash,
                        size: 18,
                      ),
                      hintText: "********",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 38),
                child: const Text(
                  "Confirm password",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        LoginIcon.eyeslash,
                        size: 18,
                      ),
                      hintText: "********",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(height: 20),
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
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const LoginScreen()));
                        });
                      },
                      child: const Text("Sign in"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
