import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  final bool isPassword;

  const CustomTextField(
      {Key? key,
      required this.hinttext,
      required this.mycontroller,
      required this.isPassword})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 404;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return TextField(
      controller: widget.mycontroller,
      obscureText: widget.isPassword && _obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15 * fem),
          borderSide: BorderSide(color: Color(0xff004aad)),
        ),
        fillColor: Color(0x358a8a8a),
        filled: true,
        hintText: widget.hinttext,
        hintStyle: TextStyle(
          fontSize: 16 * ffem,
          height: 1.5 * ffem / fem,
          letterSpacing: 1.12 * fem,
          color: Color.fromARGB(255, 138, 138, 138),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: _togglePasswordVisibility,
              )
            : null,
      ),
      style: TextStyle(
        fontSize: 16 * ffem,
        height: 1.5 * ffem / fem,
        letterSpacing: 1.12 * fem,
        color: Color(0xff000000),
      ),
    );
  }
}
