import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //Main container container where we add our photo and set our photo.
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/register.png'),
                    fit: BoxFit.cover)),
            // Scafhold beacuse container not have any body proparty
            child: Scaffold(
              backgroundColor:    const Color.fromRGBO(7, 7, 7, 0.373),
              body: Stack(
                children: [
                  //our second container only works text

                  Container(
                      padding: const EdgeInsets.only(left: 34, top: 125),
                      child: const Text(
                        "Create \n Account",
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      )),
                  // we use singleChildScrollview because whe our keybord open this time we scroll our screen

                  // third container and it has text fild and button
                  SingleChildScrollView(
                      child: Container(
                    //it is paddding portion for plasing text fild
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.36,
                        left: 35,
                        right: 35),
                    // here we use column
                    child: Column(children: [
                      TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.white)),
                              hintText: "Name",
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.white)),
                              hintText: "Email",
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.white)),
                              hintText: "Password",
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      const SizedBox(
                        height: 20,
                      ),
                      //we use row here
                      Row(

                          //for equal alignment of button

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Color.fromRGBO(251, 249, 249, 1),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                            //for circular button
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
                                  decorationColor: Colors.white,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      )
                    ]),
                  ))
                ],
              ),
            ));
  }
}
