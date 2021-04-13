import 'package:flutter/material.dart';
import 'package:muslim/widgets/gradientAppBar.dart';
import 'package:muslim/screens/ad3eya_screen.dart';
import 'package:muslim/screens/a7ades_screen.dart';
import 'package:muslim/screens/azkar_screen.dart';
import 'package:muslim/screens/stores_screen.dart';
import 'package:muslim/screens/tasbee7_screen.dart';

import 'ad3eya_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              GradientAppBar("Muslim App"),
              Stack(children: [
                Image.asset(
                  "assets/images/muslim.jpg",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height,
                ),
                Positioned(
                    child: Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(Ad3eyaScreen.routeName),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            height: MediaQuery.of(context).size.height * .1,
                            color: Colors.black26,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.access_alarm,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "ادعيه",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(A7adesScreen.routeName),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            height: MediaQuery.of(context).size.height * .1,
                            color: Colors.black26,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.access_alarm,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "احاديث",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(AzkarScreen.routeName),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            height: MediaQuery.of(context).size.height * .1,
                            color: Colors.black26,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.access_alarm,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "اذكار",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(StoresScreen.routeName),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            height: MediaQuery.of(context).size.height * .1,
                            color: Colors.black26,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.access_alarm,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "قصص",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(Tasbee7Screen.routeName),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .8,
                            height: MediaQuery.of(context).size.height * .1,
                            color: Colors.black26,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.access_alarm,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "تسابيح",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
