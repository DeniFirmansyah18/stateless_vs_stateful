import 'package:flutter/material.dart';
import './pages/home.dart';
void main() {
  runApp (AplikasiKu());
}
class AplikasiKu extends StatelessWidget {
  const AplikasiKu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}