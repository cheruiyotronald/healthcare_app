import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image(
                  image: NetworkImage(
                      'data:image/jpeg;base64,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'),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email Adress",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: InkWell(
                      onTap: () {
                        if (passToggle == true) {
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                      },
                      child: passToggle
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(
                              CupertinoIcons.eye_fill,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )
                      );
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7165D6),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
