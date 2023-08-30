import 'package:flutter/material.dart';
import 'package:login_page/login_page/login_page.dart';
import 'package:login_page/register_page/verification_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
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
                  "Register",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(text: 'Create an '),
                      TextSpan(
                          text: 'account ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple)),
                      TextSpan(text: 'to access all the features of '),
                      TextSpan(
                          text: 'HoangTranAPP',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon:
                        Icon(Icons.alternate_email, color: Colors.purple),
                    hintText: 'Ex: abc@example.com',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  "Your Name",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.person, color: Colors.purple),
                    hintText: 'Ex: Hoang Tran',
                  ),
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.lock, color: Colors.purple),
                    hintText: '●●●●●●●●●●',
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.purple),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (VerificationPage())));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
