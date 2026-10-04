import 'package:evently/core/sources/assetsmanager.dart';
import 'package:evently/core/sources/colors.dart';
import 'package:evently/core/sources/routes.dart';
import 'package:evently/core/sources/validator.dart';
import 'package:evently/core/widgets/custom_elevated_button.dart';
import 'package:evently/core/widgets/custom_text_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController nameController ;

  late TextEditingController emailController ;

  late  TextEditingController passwordController;

  TextEditingController passwordConfirmationController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(ImageManager.logo),
                Text(
                  "Creat your account",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 24),
                CustomTextFormField(
                  validator: Validator.validateName,
                  controller: nameController,
                  hintText: "Enter your name",
                  prefixIcon: Icon(Icons.person_2_outlined),
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  validator: Validator.validateEmail,
                  controller: emailController,
                  hintText: "Enter your email",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  validator: Validator.validatePassword,
                  controller: passwordController,
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixicon: Icon(Icons.visibility_off_outlined),
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  validator: (input) {
                    if (input != passwordController.text) {
                      return "password does not match";
                    }
                    return null;
                  },
                  controller: passwordConfirmationController,
                  hintText: "Confirm your password ",
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixicon: Icon(Icons.visibility_off_outlined),
                ),
                SizedBox(height: 52),
                CustomElevatedButton(title: "sign up", onpress: _creataccount),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CustomTextButton(
                      text: "login",
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RoutesManager.login,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  void _creataccount() {
    if (_formKey.currentState!.validate() == false) return;
  }
}
