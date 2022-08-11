// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:codlab/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import '../Pages/PersonalDataPage.dart';
import 'Analyzes.dart';
import 'package:codlab/PagesInPages/Diagnostic.dart';

class MedicalData extends StatelessWidget {
  const MedicalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Medical data"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const PesonalDataPage()));
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Wrap(children: [
          ListTile(
            leading: const Icon(
              Icons.calendar_today_outlined,
              size: 40,
            ),
            title: const Text(
              'Personal Data',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          const Divider(color: Colors.white),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.science_outlined,
              size: 43,
            ),
            title: const Text(
              'Analyzes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>const Anlyzes()));
            },
          ),
          const Divider(color: Colors.white),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.monitor_heart_outlined,
              size: 40,
            ),
            title: const Text(
              'Diagnostics',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Diagnostic()));
            },
          ),
        ]),
      );
}
