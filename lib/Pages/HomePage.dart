import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../PageElements/NavigationDrawer.dart';
import 'DoctorDetailsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();
    initFirebase();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
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
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 28, left: 28),
                child: const Text(
                  'Hi,User',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff363636),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20),
                child: const Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff363636),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 28, right: 28),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 10),
                        blurRadius: 15,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: const TextField(
                            maxLines: 1,
                            autofocus: false,
                            style: TextStyle(
                              color: Color(0xff107163),
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Search",
                                ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff2a4b5e),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Container(
                width: size.width,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Text(
                        'Category',
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10, top: 1),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Color(0xff363636),
                            fontSize: 19,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    demoCategories(
                        "assets/images/brain.png", "Brain", "10 Doctors"),
                    demoCategories(
                        "assets/images/bone.png", "Bone", "12 Doctors"),
                    demoCategories(
                        "assets/images/heart.png", "Heart", "15 Doctors"),
                    demoCategories(
                        "assets/images/tooth.png", "Tooth", "11 Doctors"),
                    demoCategories(
                        "assets/images/tooth.png", "Tooth", "11 Doctors"),
                    demoCategories(
                        "assets/images/tooth.png", "Tooth", "11 Doctors"),
                  ],
                ),
              ),
              Container(
                width: size.width,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Text(
                        'Top Rated',
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10, top: 1),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Color(0xff363636),
                            fontSize: 19,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: ListView(
                      children: [
                        demoTopRated(
                          "assets/images/dr_1.png",
                          "Dr.Fred Mask",
                          'Heart Surgeon',
                          '4.5',
                        ),
                        demoTopRated(
                          'assets/images/dr_2.png',
                          "Dr.Stella Kane ",
                          'Heart Surgeon',
                          '4.5',
                        ),
                        demoTopRated(
                          'assets/images/dr_3.png',
                          "Dr.Zac Wolff",
                          'Heart Surgeon',
                          '4.5',
                        ),
                      ],
                    )),
              )
            ]),
      ),
    );
  }

  Widget demoCategories(String image, String name, String drQuatity) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        width: 100,
        decoration: BoxDecoration(
          color: const Color(0xff28475a),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(image),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: const Color(0xffd9fffa).withOpacity(.07),
              ),
              child: Text(
                drQuatity,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ));
  }

  Widget demoTopRated(
      String image, String name, String speaciality, String rating) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetailPage()));
      },
      child: Container(
        height: 90,
        margin:  const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(image),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        name,
                        style: const TextStyle(
                          color: Color(0xff363636),
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: Color(0xffababab),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3, left: size.width * 0.5),
                      child: Row(children: [
                        Container(
                          child: const Text(
                            "Rating: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            rating,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
