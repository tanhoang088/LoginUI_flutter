import 'package:flutter/material.dart';
import 'package:login_page/forgot_password_page/forgot_password_verify_page.dart';

class ForgotPasswordSendEmail extends StatelessWidget {
  const ForgotPasswordSendEmail({super.key});

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
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "Recover your password if you have forgot the password!",
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
                        prefixIcon: Icon(Icons.alternate_email),
                        prefixIconColor: Colors.purple,
                        hintText: 'Ex: abc@example.com',
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
                                builder: (context) =>
                                    ForgotPasswordVerification()));
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}
