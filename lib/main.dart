import 'package:codlab/Pages/LandingPage.dart';
import 'package:codlab/Pages/Registration.dart';
import 'package:codlab/Pages/Appointment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/Validation.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MedHelp());
}

class MedHelp extends StatelessWidget {
  const MedHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.cyan[900],
        ),
        home: const MainPage());
  }
}

class MainPage extends StatelessWidget{
  const MainPage({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) =>
      Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const test();
            } else {
              return const Registration();
            }
          },
        ),
      );
}
