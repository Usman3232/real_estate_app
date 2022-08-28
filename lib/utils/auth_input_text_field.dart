import 'package:flutter/material.dart';

import 'constants.dart';
import 'size_config.dart';

class AuthTextInputField extends StatefulWidget {
  final Color textColor;
  final String? labelText;
  final double? labelsize;
  final Color labelcolor;
  final String? hintText;
  final double? hintSize;
  final Color hintcolor;
  final Color bordercolor;
  final double radius;
  final bool isPassword;
  final Color fillColor;
  final Color cursorColor;
  final TextEditingController? textEditingController;
  final TextInputType inputType;
  final suffixIcon;
  final prefixIcon;
  final enabled;
  final bool autofocus;
  final Function(String)? onChange;
  bool isfocus;
  final VoidCallback onTap;
  final String? Function(String? val)? validator;

  AuthTextInputField({
    Key? key,
    this.hintText,
    required this.onTap,
    this.textEditingController,
    this.isPassword = false,
    this.hintSize,
    this.hintcolor = Colors.grey,
    this.fillColor = Colors.transparent,
    this.textColor = Colors.black,
    this.cursorColor = Colors.black,
    this.inputType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled,
    this.labelText,
    this.radius = 10,
    this.bordercolor = Colors.black,
    this.autofocus = false,
    this.onChange,
    this.labelsize,
    this.labelcolor = Colors.grey,
    required this.isfocus,
    this.validator,
  }) : super(key: key);

  @override
  State<AuthTextInputField> createState() => _TextInputFieldViewState();
}

class _TextInputFieldViewState extends State<AuthTextInputField> {
  bool isObscure = false;
  // bool isfocus = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscure = widget.isPassword == true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 7.5,
      decoration: BoxDecoration(
          color: Color(0xffF4F5F6),
          borderRadius: BorderRadius.circular(10),
          border: widget.isfocus
              ? Border.all(color: AppColors.primarycolor)
              : Border.all(color: Colors.transparent)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: SizeConfig.heightMultiplier * 6,
          child: TextFormField(
            
            validator: widget.validator,
            onTap: widget.onTap,
            onChanged: widget.onChange,
            autofocus: widget.autofocus,
            enabled: widget.enabled,
            obscureText: isObscure,
            style: TextStyle(color: widget.textColor),
            controller: widget.textEditingController,
            keyboardType: widget.inputType,
            decoration: InputDecoration(
              filled: true,
              fillColor: widget.fillColor,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.radius),
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.radius),
                  borderSide: BorderSide(color: widget.bordercolor)),
              labelText: widget.labelText,
              labelStyle:
                  TextStyle(fontSize: widget.hintSize, color: widget.hintcolor),
              hintText: widget.hintText,
              hintStyle:
                  TextStyle(fontSize: widget.hintSize, color: widget.hintcolor),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: isObscure
                          ? Icon(
                              Icons.visibility,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            )
                      // Container(
                      //   height: 16,
                      //   width: 16,
                      //   margin: EdgeInsets.all(15),
                      //   child: Image.asset(
                      //       isObscure ? "assets/eye_hide.png" : "assets/lock.png"),
                      // ),
                      )
                  : widget.suffixIcon,
            ),
            cursorColor: widget.cursorColor,
          ),
        ),
      ),
    );
  }
}
