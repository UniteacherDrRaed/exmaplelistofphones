import 'package:flutter/material.dart';

import '../data/listofphone.dart';
import '../model/phone.dart';
import 'phonepage.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Of phones"),
        centerTitle: true,
        backgroundColor: Colors.lime.shade100,
      ),
      body: ListView.builder(
        itemCount: listOfPhones.length,
          itemBuilder: (context,phoneindex){
          Phone currentPhone =listOfPhones[phoneindex];
          return ListTile(
            onTap: (){
             Navigator.push(context,
             MaterialPageRoute(builder: (context)=>PhoneDetail(phone: currentPhone)));
            },
            title: Text(currentPhone.name),
            subtitle: Text(currentPhone.specification),
            trailing: Text(currentPhone.phoneColor),
          );
          }),
    );
  }
}
