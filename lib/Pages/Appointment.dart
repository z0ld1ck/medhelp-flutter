import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title:Text('Home'),
      ),
    );
  }
}
