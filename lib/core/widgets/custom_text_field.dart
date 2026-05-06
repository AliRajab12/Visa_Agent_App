import 'package:flutter/material.dart';
import 'package:visa_agent_app/core/theme/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  String? label;
  Widget? suffixIcon;
  Widget? prefixIcon;
  TextEditingController? controller;
  bool? hasPassword;
  bool? edit;
  bool? isPhoneCode;
  Function? onFieldSubmitted;
  Function? onChanged;
  Function? onSaved;
  TextStyle? style;
  final FormFieldValidator<String>? validator;
  String? hintText;
  TextStyle? hintStyle;
  int? line;
  TextInputType? textInputType;
  double? border;
  bool? enable;
  Color? background;

  CustomTextField({
    Key? key,
    this.label,
    this.isPhoneCode = false,
    this.hasPassword = false,
    this.controller,
    this.edit,
    this.border,
    this.background,
    this.suffixIcon,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.onChanged,
    this.onSaved,
    this.enable,
    this.style,
    this.line,
    this.validator,
    this.hintText,
    this.hintStyle,
    this.textInputType,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.line != null ? (widget.line! * 20) : 50,
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        key: widget.key,
        enabled: widget.enable == null ? true : widget.enable!,
        controller: widget.controller,
        validator: widget.validator,
        onFieldSubmitted: (value) {
          if (widget.onFieldSubmitted != null) widget.onFieldSubmitted!(value);
        },
        onChanged: (value) {
          if (widget.onChanged != null) widget.onChanged!(value);
        },
        onSaved: (newValue) {
          if (widget.onSaved != null) widget.onSaved!(newValue);
        },
        textInputAction: TextInputAction.next,
        obscureText: (widget.hasPassword == true)
            ? (showPassword == true)
            : (widget.hasPassword == true),
        maxLines: widget.line ?? 1,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          // errorStyle: TextStyle(color: Colors.red),
          // errorText: widget.validator.,
          suffixIcon: widget.hasPassword == true
              ? SizedBox(
                  width: 20,
                  height: 20,
                  child: InkWell(
                      onTap: () {
                        showPassword = !showPassword;
                        setState(() {});
                      },
                      child: (showPassword == false)
                          ? const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Icon(Icons.remove_red_eye,
                              color: Colors.grey,),
                            )
                          : const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Icon(Icons.remove_red_eye),
                            )),
                )
              : widget.suffixIcon ?? const SizedBox(),
          hintText: widget.hintText,
          hintStyle: widget.hintStyle ??
              TextStyle(color: SomiColors.grey, fontSize: 13),
          contentPadding: const EdgeInsetsDirectional.only(
              top: 5, end: 16, start: 16, bottom: 5),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.border ?? 10),
              borderSide: BorderSide(color: Colors.white)),
          errorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(widget.border ?? 10.0)),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.border ?? 10),
              borderSide: BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.border ?? 10),
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.border ?? 10),
              borderSide: BorderSide(color: SomiColors.blue, width: 1.5)),
          labelText: widget.label,
          errorStyle: const TextStyle(fontSize: 10, height: 0.3),
          labelStyle: TextStyle(color: Colors.black,fontSize: 14),
          fillColor: widget.background ?? Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
