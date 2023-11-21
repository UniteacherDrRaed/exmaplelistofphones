import 'package:flutter/material.dart';

import '../model/phone.dart';
class PhoneDetail extends StatelessWidget {
  const PhoneDetail({super.key, required this.phone});
 final Phone phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(phone.name),
        centerTitle: true,
      ),
      body: ListTile(
        title: Text(phone.phoneColor),
        subtitle: Text(phone.specification),
      ),
    );
  }
}
