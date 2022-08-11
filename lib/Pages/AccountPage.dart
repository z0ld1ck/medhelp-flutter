import 'package:codlab/Pages/Validation.dart';
import 'package:flutter/material.dart';

import '../PageElements/NavigationDrawer.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme
              .of(context)
              .primaryColor,
          centerTitle: true,
          actions: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginDemo()));
                },
              icon: const Icon(Icons.account_circle_rounded),
              label: const SizedBox.shrink(),
            )
          ],
        ),
        drawer: const NavigationDrawer(),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: ListView(
            children: [
              const SizedBox(height: 40),
              Row(
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 1),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
}
