import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ImultiselectdropDown extends StatefulWidget {
  const ImultiselectdropDown({super.key});

  @override
  State<ImultiselectdropDown> createState() => _ImultiselectdropDownState();
}

class _ImultiselectdropDownState extends State<ImultiselectdropDown> {
  List<Map> name=[
    {"name":"badush","ischecked":false},
    {"name":"sathish","ischecked":false}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: name.map((e) => CheckboxListTile(title: Text(e["name"]),
                value: e["ischecked"],
                onChanged: (val){
                  setState(() {
                    e["ischecked"]=val;
                  });
                })).toList(),
          ),
          Column(
          children: name.map((e) {
            if(e["ischecked"]==true){
              return Card(
                child:Row(
                  children: [
                    Text(e["name"]),
                    GestureDetector(
                      child: Icon(Icons.delete),
                    onTap: ()
                    {
                        setState(()
                        {
                        e["ischecked"]=!e["ischecked"];
                        }
                    );
                        },
                    )
                           ],
                )
              );
            }
            return Container();
          }).toList(),
          )
        ],
      ),
    );
  }
}
