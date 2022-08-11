import 'package:flutter/material.dart';
import '../PageElements/NavigationDrawer.dart';

class QueuesPage extends StatelessWidget {
  const QueuesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          actions: [
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.notifications_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.account_circle_outlined,
                ),
              ),
            ),
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
                    Icons.groups_outlined,
                    color: Colors.blue,
                    size:35,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Queues',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 1,color:Colors.black),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
}
