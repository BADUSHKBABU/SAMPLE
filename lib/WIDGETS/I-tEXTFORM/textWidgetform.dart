import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItextWidget extends StatelessWidget {

  TextEditingController? name;
  bool obsecure;
  String hinttext;

   ItextWidget({super.key,required this.name,required this.obsecure,required this.hinttext});

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller:name,
      obscureText: obsecure,
      decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(20))),

      ),
    );
  }
}
