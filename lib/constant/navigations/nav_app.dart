import 'package:flutter/material.dart';

void goTo(BuildContext context, Widget numbers) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => numbers));
}
