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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.blue,
                image: DecorationImage(image: AssetImage("assets/codex.jpg"))
              ),
              child:Column(
                children: [ Image.asset("assets/iquad.jpg"),
                    SizedBox(height: 20,),
                    ItextWidget(name: usename, obsecure: false , hinttext: "username",filled: true,icon: Icon(Icons.person),),
                  SizedBox(height: 20,),
                  ItextWidget(name: password, obsecure: true, hinttext: "password",filled: true,icon: Icon(Icons.lock),),

                    ElevatedButton(style: ButtonStyle(alignment: Alignment.center ),onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return DropdownHardcoded();}));}, child: Text("login")),
                  ],
              )
            ),

          ],
        ),
      ),
    );
  }
}
