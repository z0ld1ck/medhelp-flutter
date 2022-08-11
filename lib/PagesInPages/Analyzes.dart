
import 'package:codlab/PagesInPages/MedicalData.dart';
import 'package:flutter/material.dart';


class Anlyzes extends StatelessWidget {
  const Anlyzes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=>Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text("Medical data"),
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
    body: Wrap(
      children: [
        Container(
          height: 60,
          child: const ListTile(
            title: Text(
              'ИИН',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              '030626551056',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          child: const ListTile(
            title: Text(
              'Дата рождения',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              '26.06.2003',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          child: const ListTile(
            title: Text(
              'Пол',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              'Мужской',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          child: const ListTile(
            title: Text(
              'Национальность',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              'КАЗАХ',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          child: const ListTile(
            title: Text(
              'Гражданство',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              'Казахстан',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          child: const ListTile(
            title: Text(
              'Номер телефона ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              '+77029001320',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
