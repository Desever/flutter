import 'package:flutter/material.dart';
class banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Image.asset(
      'images/banner.jpg',
      fit: BoxFit.cover,
    );
  }
}