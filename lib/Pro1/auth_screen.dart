import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Image.asset(
                  "assets/images/background1.png",
                  fit: BoxFit.cover,
                );
                setState(() {
                  print("  تم التحويل الى الصورة الثانية ");
                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/background1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 100.0, left: 20.0, bottom: 20.0, right: 20.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Welcome To My App",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.start,
                      "HOS \$\$ Store",
                      style: TextStyle(
                          color: Colors.green[400],
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.green[400],
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Continue With  Email or Phone",
                        style: TextStyle(color: Colors.white, fontSize: 23.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "\$=>> OR Create Account",
                        style:
                            TextStyle(color: Colors.green[400], fontSize: 30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
