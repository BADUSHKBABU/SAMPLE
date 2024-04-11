import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItextWidget extends StatelessWidget {

  TextEditingController? name;
  bool obsecure;
  bool filled;
  String hinttext;
  Widget icon;

   ItextWidget({super.key,required this.name,required this.obsecure,required this.hinttext,required this.filled,required this.icon});

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      keyboardType: TextInputType.text,
      autofocus: true,
      controller:name,
      obscureText: obsecure,
      decoration: InputDecoration(
        prefixIcon: icon,
        filled: filled,
        hintText: hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(20))),

      ),
    );
  }
}
