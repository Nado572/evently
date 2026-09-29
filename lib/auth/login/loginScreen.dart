import 'package:evently/core/sources/routes.dart';
import 'package:evently/core/widgets/custom_elevated_button.dart';
import 'package:evently/core/widgets/custom_text_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../core/sources/assetsmanager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(ImageManager.logo),
              Text(
                "Login to your account",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 24,),
              CustomTextFormField(
                hintText: "Enter your email",
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Enter your pass word",
                prefixIcon: Icon(Icons.lock_outline),
                suffixicon: Icon(Icons.visibility_off_outlined),
              ),
              SizedBox(height: 8,),
              CustomTextButton(
                textAlign: TextAlign.right,
                text: "Forget your password?",
                onTap: () {},
              ),

              SizedBox(height: 48),
              CustomElevatedButton(title: "sign up", onpress: () {}),
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ? ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  CustomTextButton(text: "sign up", onTap: () {
                    Navigator.pushReplacementNamed(context, RoutesManager.register);
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
