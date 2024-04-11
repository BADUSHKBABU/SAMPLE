

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class DropdownHardcoded extends StatefulWidget {
  const DropdownHardcoded({super.key});

  @override
  State<DropdownHardcoded> createState() => _DropdownHardcodedState();
}

class _DropdownHardcodedState extends State<DropdownHardcoded> {
  @override
  void dispose() {
    Selectedemployee;
    super.dispose();
  }
  var selectedwork;

  final empnamecontroller=TextEditingController();
  final CollectionReference collectionReference=FirebaseFirestore.instance.collection("project");
  var Selectedemployee;
  List EmpnameLst=["badush","dona","aiswarya","tom","Likhitha","radhika","bijin"," robin","shini"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list are hardcoded"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Text("Dropdown hardcode list "),
            DropdownButton(items: EmpnameLst.map((value) => DropdownMenuItem(
                child: Text(value),
                value: value)).toList(),
              onChanged: (e){
              setState(() {
                Selectedemployee=e;
              });
            },
              value: Selectedemployee,
              hint: Text("select employee"),
        
            ),
           ElevatedButton(onPressed: (){
             setState(() {
               print(Selectedemployee);
               empnamecontroller.text=Selectedemployee;
             });
           }, child: Text("save")),
        SizedBox(height: 20,),
            Text(
                 empnamecontroller.text,
             ),
              SizedBox(height: 20,),


              ///DROPDOWN LIST CONTAINS DATAS FROM FIREBASE ///
        
            Text("Dropdown list from firebase"),
            StreamBuilder(stream: collectionReference.snapshots(),
                builder: (context,snapshot){
              if(snapshot.hasData){
                var length=snapshot.data!.docs.length;
              List<DropdownMenuItem> projectlist=[];
              for(int i=0;i<length;i++)
              {
                DocumentSnapshot documentsnapshot=snapshot.data!.docs[i];
                projectlist.add(
                    DropdownMenuItem(child: Text(documentsnapshot.id),
                  value: "${snapshot.data!.docs[i]}",)
                );
              }
              return DropdownButton(
                  items: projectlist,
                  onChanged: (e){setState(()
                  {
                selectedwork=e;
                print(selectedwork);
                  }
              );
                    },value: selectedwork,
                hint: Text("select project"),
              );
              }
              else
              {
                return CircularProgressIndicator();
              }
            }
            )
          ],
        ),
      ),
    );
  }
}
