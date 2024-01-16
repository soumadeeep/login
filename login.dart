import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});
  @override
  State<Mylogin> createState() {
    return Loginstate();
  }
}

class Loginstate extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 34, top: 130),
                child: const Text(
                  "Welcome \n Back",
                  style: TextStyle(color: Colors.white, fontSize: 33),
                )),
            SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  left: 35,
                  right: 35),
              child: Column(children: [
                const TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xFFEDE5E5),
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))))),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Color(0xFFEDE5E5),
                        filled: true,
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))))),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sign in',
                        style: TextStyle(
                            color: Color(0xFF464545),
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xFF464545),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Color.fromRGBO(240, 239, 239, 1),
                          ), // Use Icon widget here
                        ),
                      )
                    ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                              color: Color(0xFF464545)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                              color: Color(0xFF464545)),
                        ))
                  ],
                )
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
