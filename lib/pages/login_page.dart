import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teechat/components/my_button.dart';
import 'package:teechat/components/my_text_field.dart';
import 'package:teechat/constants/assets.dart';
import 'package:teechat/constants/color.dart';
import 'package:teechat/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      authService.signInWIthEmailandPassword(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // icon
                  Image.asset(
                    AssetsManager.logow,
                    width: 200,
                  ),
          
                  // welcome back message
                  const Text(
                    "Welcome Back you've been missed!",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // email textfield
                  MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false),
                  const SizedBox(
                    height: 10,
                  ),
                  // password textfield
                  MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true),
                  const SizedBox(
                    height: 25,
                  ),
                  // signin button
                  MyButton(onTap: signIn, text: "Sign In"),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member?"),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                          onTap: widget.onTap,
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
