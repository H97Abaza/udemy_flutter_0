import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0,
  required Function() function,
  required String text,
}) =>
    Container(
      width: width,
      height: 40,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        color: Colors.blue,
        child: Text(
          (isUpperCase) ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: function,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType inputType,
  Function(String)? onchanged,
  Function(String)? onFieldSubmitted,
  required Function validator,
  required String label,
  required String hint,
  required IconData prefixIcon,
  IconData? suffixIcon,
  bool isObscure = false,
  Function? onSuffixButtonPressed,
}) =>
    TextFormField(
      obscureText: isObscure,
      keyboardType: inputType,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onchanged,
      controller: controller,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: GestureDetector(
          child: Icon(suffixIcon),
          onTap: () => onSuffixButtonPressed!(),
        ),
        labelText: label,
      ),
    );

               /*(String? value) {
                    if (value!.isEmpty) {
                      return 'email address must not be empty';
                    } else if (!value.contains('@')) {
                      return 'Error! You must provide a valide email address';
                    }
                    return null;
                  } */