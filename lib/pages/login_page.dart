import 'package:flutter/material.dart';
import 'package:flutter_login/components/MyButton.dart';
import 'package:flutter_login/components/MyTextfields.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//sign user in function
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 100.0,
              ),

              const SizedBox(
                height: 50,
              ),

              //welcome back
              const Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                    color: Color.fromRGBO(97, 97, 97, 1), fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              //username field
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10.0,
              ),
              //password field

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              //sign in button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),
              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
              ),
              //google+apple sign in button

              //not a member?register now
            ],
          ),
        ),
      ),
    );
  }
}
