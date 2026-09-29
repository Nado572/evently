import 'package:evently/core/sources/assetsmanager.dart';
import 'package:evently/core/sources/colors.dart';
import 'package:evently/core/sources/routes.dart';
import 'package:evently/core/widgets/custom_elevated_button.dart';
import 'package:evently/core/widgets/custom_text_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                "Creat your account",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 24,),
              CustomTextFormField(
                hintText: "Enter your name",
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Enter your email",
                prefixIcon: Icon(Icons.email_outlined),

              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock_outline),
                suffixicon: Icon(Icons.visibility_off_outlined),
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Confirm your password ",
                prefixIcon: Icon(Icons.lock_outline),
                suffixicon: Icon(Icons.visibility_off_outlined),

              ),
              SizedBox(height: 52),
              CustomElevatedButton(title: "sign up",onpress: (){},),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Already have an account ? ",style:Theme.of(context).textTheme.bodySmall ,),
                  CustomTextButton(text: "login",onTap: (){
                    Navigator.pushReplacementNamed(context, RoutesManager.login);
                  },),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
