import 'package:flutter/material.dart';

import 'MedicalData.dart';

class Diagnostic extends StatelessWidget {
  const Diagnostic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text("Personal Data"),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Theme.of(context).primaryColor,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const MedicalData()));
          },
          icon: const Icon(Icons.arrow_back_ios)),
    ),
    body: Wrap(children: [
      Container(
        height: 70,
        child: const ListTile(
          leading: Icon(
            Icons.monitor_heart_outlined,
            size: 50,
          ),
          title: Text(
            'Diagnostic',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
      const Divider(
        color: Colors.black,
        height: 5,
        thickness: 1,
      ),
      Container(
        height: 60,
        child: const ListTile(
          subtitle: Text(
            'Radiation diagnostics and therapy',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          title: Text(
            'Service class',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
      const Divider(
        color: Colors.black,
        height: 5,
        thickness: 1,
      ),
      Container(
        height: 60,
        child: const ListTile(
          subtitle: Text(
            'Not specified',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          title: Text(
            'Disease code',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
      const Divider(
        color: Colors.black,
        height: 5,
        thickness: 1,
      ),
      const Divider(
        color: Colors.white,
        height: 5,
        thickness: 1,
      ),
      const Divider(
        color: Colors.white,
        height: 5,
        thickness: 1,
      ),
      const Divider(
        color: Colors.white,
        height: 5,
        thickness: 1,
      ),
      const Divider(
        color: Colors.white,
        height: 5,
        thickness: 1,
      ),
      const Divider(
        color: Colors.white,
        height: 5,
        thickness: 1,
      ),
      const Divider(
        color: Colors.black,
        height: 5,
        thickness: 1,
      ),
      Container(
        height: 70,
        child: const ListTile(
          leading: Icon(
            Icons.monitor_heart_outlined,
            size: 50,
          ),
          title: Text(
            'Diagnostic',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
      const Divider(
        color: Colors.black,
        height: 5,
        thickness: 1,
      ),
      Container(
        height: 60,
        child: const ListTile(
          subtitle: Text(
            'Radiation diagnostics and therapy',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          title: Text(
            'Service class',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
      const Divider(
        color: Colors.black,
        height: 5,
        thickness: 1,
      ),
      Container(
        height: 60,
        child: const ListTile(
          subtitle: Text(
            'Not specified',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          title: Text(
            'Disease code',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
      const Divider(
        color: Colors.black,
        height: 5,
        thickness: 1,
      ),
    ]),
  );
}
