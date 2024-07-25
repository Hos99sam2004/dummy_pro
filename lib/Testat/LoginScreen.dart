import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool obscureText = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      drawer: D(),
      appBar: A(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.cyan,
              Colors.indigo.shade400,
            ],
            // begin: Alignment.topLeft,
            // begin: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Account Login ",
                        style: GoogleFonts.kalnia(
                            letterSpacing: 2,
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/انا كبير.jpg",
                    height: 250,
                    width: 500,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Email",
                      labelStyle: GoogleFonts.kalnia(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: obscureText,
                    // ignore: body_might_complete_normally_nullable
                    validator: (value) {
                      if (value!.length < 10) {
                        return "Password should be more than 10 letters";
                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Password",
                      labelStyle: GoogleFonts.kalnia(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                              obscureText
                                  ? CupertinoIcons.eye
                                  : CupertinoIcons.eye_slash,
                              color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.deepOrange[500],
                          value: true,
                          onChanged: (value) {}),
                      Text(
                        "Remember me",
                        style: GoogleFonts.lora(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: GoogleFonts.lora(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 50,
                      minWidth: double.infinity,
                      // color: Colors.white,
                      child: Text(
                        "Login",
                        style: GoogleFonts.lora(
                            fontSize: 30,
                            color: Colors.deepOrange[500],
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.lora(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Register Now",
                            style: GoogleFonts.lora(
                                color: Colors.deepOrange[500],
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar A() {
    return AppBar(
        backgroundColor: Colors.deepOrange[500],
        title: Text(
          "Login_Screen",
          style: GoogleFonts.kalnia(
              letterSpacing: 2,
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          SizedBox(
            width: 20,
          ),
        ]);
  }

  Drawer D() {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          child: Image.asset("assets/images/Avatar.webp", fit: BoxFit.fill),
        ),
        CircleAvatar(
          radius: 80,
          backgroundColor: Colors.amber,
          backgroundImage: AssetImage(
            "assets/images/1.jpg",
            // bundle: null,
          ),
          // maxRadius: 100,
        ),
      ],
    ));
  }
}
