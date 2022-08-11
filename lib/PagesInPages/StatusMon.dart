import 'package:flutter/material.dart';
import '../PageElements/NavigationDrawer.dart';
import 'MedicalData.dart';
import 'package:codlab/Pages/PersonalDataPage.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const PesonalDataPage()));
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        drawer: const NavigationDrawer(),
        body: Wrap(children: [
          ListTile(
            leading: const Icon(
              Icons.monitor_heart_outlined,
              size: 40,
            ),
            title: const Text(
              'Pulse',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.height_outlined,
              size: 40,
            ),
            title: const Text(
              'Height',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.device_thermostat,
              size: 40,
            ),
            title: const Text(
              'Temperature',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.monitor_weight_outlined,
              size: 40,
            ),
            title: const Text(
              'Weight',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            onTap: () {},
          ),
        ]),
      );
}
