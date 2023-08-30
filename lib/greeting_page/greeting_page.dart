import 'package:flutter/material.dart';
import 'package:login_page/login_page/login_page.dart';
import 'package:login_page/register_page/register_page.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                child: Text(
                  "HoangTranAPP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.purple),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Text(
                  "A place where you can track all your expenses and incomes...",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Text(
                  "Let's Get Started...",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 5),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: BorderSide(width: 2.0, color: Colors.black),
                    padding: EdgeInsets.all(10)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/icons8-google-24.png'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Continue with Google",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: BorderSide(width: 2.0, color: Colors.black),
                    padding: EdgeInsets.all(10)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.alternate_email, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Continue with Email",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.purple),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  )
                ]),
              )
            ]),
      ),
    );
  }
}
