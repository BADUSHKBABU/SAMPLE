import 'package:flutter/material.dart';
import 'package:sample/WIDGETS/I-tEXTFORM/textWidgetform.dart';

import 'dropdownHardcodeddata.dart';
class iLoginPage extends StatefulWidget {
  const iLoginPage({super.key});

  @override
  State<iLoginPage> createState() => _iLoginPageState();
}

class _iLoginPageState extends State<iLoginPage> {
  TextEditingController usename=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loginpage"),),
      body: Column(
        children: [

          Image.asset("assets/iquad.jpg"),
          ItextWidget(name: usename, obsecure: false , hinttext: "username"),
          SizedBox(height: 20,),
          ItextWidget(name: password, obsecure: true, hinttext: "password"),
          ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return DropdownHardcoded();}));}, child: Text("login"))
        ],
      ),
    );
  }
}
