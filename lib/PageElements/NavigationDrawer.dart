import 'package:flutter/material.dart';
import '../Pages/AccountPage.dart';
import '../Pages/HomePage.dart';
import '../Pages/PersonalDataPage.dart';
import '../Pages/QueuesPage.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Colors.cyan[900],
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: const [
            CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1611262588019-db6cc2032da3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80')),
            SizedBox(
              height: 5,
            )
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(
                Icons.home_outlined,
                size: 35,
              ),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.badge_outlined,
                size: 35,
              ),
              title: const Text(
                'Personal Data',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const PesonalDataPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.groups_outlined,
                size: 35,
              ),
              title: const Text(
                'Queues',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const QueuesPage(),
                ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(
                Icons.account_circle_rounded,
                size: 35,
              ),
              title: const Text(
                'Account',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const Account(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
