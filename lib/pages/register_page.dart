import 'package:flutter/material.dart';
import 'package:teechat/components/my_button.dart';
import 'package:teechat/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() {}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // icon
                const Icon(
                  Icons.message,
                  size: 100,
                ),
                const SizedBox(height: 50,),
                //create account message 
                const Text(
                  "Let's Create an account for you!",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25,),
                // email textfield
                MyTextField(controller: emailController, hintText: 'Email', obscureText: false),
                const SizedBox(height: 10,),
                // password textfield
                MyTextField(controller: passwordController, hintText: 'Password', obscureText: true),
                const SizedBox(height: 25,),
                // confirm password textfield
                MyTextField(controller: confirmPasswordController, hintText: 'Confirm Password', obscureText: true),
                const SizedBox(height: 25,),
                // signin button
                MyButton(onTap: signUp,text: "Sign Up"),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a member?"),
                    SizedBox(width: 4,),
                    GestureDetector(onTap: widget.onTap, child: Text("Login Now", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
                  ],
                )

                
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}