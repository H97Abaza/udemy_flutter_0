import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                defaultFormField(
                    prefixIcon: Icons.email,
                    controller: emailController,
                    inputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email address must not be empty';
                      } else if (!value.contains('@')) {
                        return 'Error! You must provide a valide email address';
                      }
                      return null;
                    },
                    label: 'Email',
                    hint: 'email address'),
                SizedBox(
                  height: 15,
                ),
                defaultFormField(
                    isObscure: isObscure,
                    suffixIcon:
                        isObscure ? Icons.visibility : Icons.visibility_off,
                    onSuffixButtonPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                      print(isObscure);
                    },
                    prefixIcon: Icons.password,
                    controller: passwordController,
                    inputType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty';
                      } else if (value.toString().length < 8) {
                        return 'Error! Password must be more than 8 characters';
                      }
                      return null;
                    },
                    label: 'Password',
                    hint: 'password'),
                SizedBox(
                  height: 20,
                ),
                defaultButton(
                    radius: 10,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    text: "loGin"),
                SizedBox(
                  height: 15,
                ),
                defaultButton(
                    radius: 10,
                    function: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    text: "register"),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Regirster Now',
                      ),
                    ),
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
