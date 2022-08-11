import 'package:codlab/PagesInPages/StatusMon.dart';
import 'package:codlab/PagesInPages/MedicalData.dart';
import 'package:flutter/material.dart';
import '../PageElements/NavigationDrawer.dart';
import '../PagesInPages/LicnhDan.dart';

class PesonalDataPage extends StatelessWidget {
  const PesonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Personal Data"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        drawer: const NavigationDrawer(),
        body: Wrap(
          children: [
            ListTile(
              leading: const Icon(
                Icons.person_outline_outlined,
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
                    MaterialPageRoute(builder: (context) => const LichnDan()));
              },
            ),
            const Divider(color: Colors.white),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(
                Icons.calendar_today,
                size: 35,
              ),
              title: const Text(
                'Medical Data',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MedicalData()));
              },
            ),
            const Divider(color: Colors.white),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(
                Icons.monitor_heart_outlined,
                size: 35,
              ),
              title: const Text(
                'Status Monitoring',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Status()));
              },
            ),
            const Divider(color: Colors.white),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(
                Icons.insert_chart_outlined,
                size: 35,
              ),
              title: const Text(
                'Health Indicators',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LichnDan()));
              },
            ),
            const Divider(color: Colors.white),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(
                Icons.folder_outlined,
                size: 40,
              ),
              title: const Text(
                'Files',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LichnDan()));
              },
            ),
            const Divider(color: Colors.white),
          ],
        ),
      );
}
