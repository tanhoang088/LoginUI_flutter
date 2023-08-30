import 'package:flutter/material.dart';
import 'package:login_page/forgot_password_page/forgot_password_email_page.dart';
import 'package:login_page/register_page/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  "Login now to track all your expenses and income at a place!",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.purple),
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Ex: abc@example.com',
                      prefixIcon:
                          Icon(Icons.alternate_email, color: Colors.purple)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  "Your Password",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.purple),
                          borderRadius: BorderRadius.circular(15)),
                      prefixIcon: Icon(Icons.lock, color: Colors.purple),
                      hintText: '●●●●●●●●●●',
                      hintStyle: TextStyle(fontSize: 15)),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordSendEmail()));
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.purple),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.purple),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
