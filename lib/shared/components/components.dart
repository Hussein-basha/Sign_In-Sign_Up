import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.deepPurple,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 40.0,
      color: background,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget ButtonRegister({
  double width = double.infinity,
  Color background = Colors.deepPurple,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 40.0,
      color: background,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required Function validate,
  required IconData prefix,
  String hint = 'Email',
  bool isClickable = true,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onTap: () {
        onTap!();
      },
      onFieldSubmitted: (String? value) {
        onSubmit!(value);
      },
      onChanged: (String? value) {
        onChange!(value);
      },
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          prefix,
        ),
        border: OutlineInputBorder(),
      ),
    );

Widget defaultFormFieldpass({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required Function validate,
  required IconData prefix,
  String hint = 'Password',
  IconData? suffix,
  IconData? suffixmark,
  bool ispass = false,
  Function? onSubmit,
  Function? onChange,
  Function? suffixpressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: ispass,
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixpressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget defaultFormFieldConfirmPass({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required Function validate,
  required IconData prefix,
  String hint = 'Confrm Password',
  IconData? suffix,
  IconData? suffixmark,
  bool isconfirmpass = false,
  Function? onSubmit,
  Function? onChange,
  Function? suffixpressed,
  Function? suffixmarkpressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isconfirmpass,
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixpressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget FormFieldRegisterfname({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required Function validate,
  required IconData prefix,
  String hint = 'First Name',
  Function? onSubmit,
  Function? onChange,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          prefix,
        ),
        border: OutlineInputBorder(),
      ),
    );

Widget FormFieldRegisterlname({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required Function validate,
  required IconData prefix,
  String hint = 'Last Name',
  Function? onSubmit,
  Function? onChange,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          prefix,
        ),
        border: OutlineInputBorder(),
      ),
    );

