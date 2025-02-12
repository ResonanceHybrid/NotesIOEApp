import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/Entrance/cee_entrancesyllabus.dart';
import 'package:ioe/Subject_Pages/Entrance/ioe_entrancesyllabys.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/main.dart';
import 'package:ioe/screens/components/home_pagegrid.dart';
import 'package:ioe/screens/components/home_screen.dart';

class HomeContent extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final isGoogleSignIn = user.providerData[0].providerId == 'google.com';
    final firstName = isGoogleSignIn
        ? user.displayName!.split(' ')[0]
        : user.email!
            .split('@')[0]; // Display only username for non-Google sign-ins

    return SafeArea(
      child: ListView(
        children: [
          AppBarTop(
            pageTitle: 'Notes IOE',
            onDrawerIconPressed: () {
              Scaffold.of(context).openDrawer();
            },
            // Pass the page title here
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi $firstName,",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Guess what? Today’s a great day\nto pretend we’re learning something new!",
                          style: TextStyle(
                            color: Colors.black54,
                            wordSpacing: 2.5,
                            fontSize: 14.8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Image.asset("assets/images/logo.png"),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      IoeEntrancesyllabys(initialTabIndex: 0)));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10),
                          child: const Text(
                            "IOE Entrance Resources",
                            style: TextStyle(
                              fontSize: 18.0,
                              //color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                              //color: kblue,
                              border: Border.all(color: kblue),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 15.0, vertical: 10),
                      //   child: const Text(
                      //     "Notes and Useful Resources are Being Added",
                      //     style: TextStyle(
                      //       fontSize: 18.0,
                      //     ),
                      //   ),
                      //   decoration: BoxDecoration(
                      //       //color: kblue,
                      //       border: Border.all(color: kblue),
                      //       borderRadius: BorderRadius.circular(10)),
                      // ),
                      // SizedBox(
                      //   width: 15,
                      // ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => CeeEntrancesyllabus()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10),
                          child: const Text(
                            "CEE Entrance Resources",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          decoration: BoxDecoration(
                              //color: kblue,
                              border: Border.all(color: kblue),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        if (products[index].title == "IOE Notes") {
                          navigatorKey.currentState?.pushNamed('/ioe_notes');
                        } else if (products[index].title == "IOE Syllabus") {
                          navigatorKey.currentState?.pushNamed('/ioe_syllabus');
                        } else if (products[index].title == "IOE Questions") {
                          navigatorKey.currentState
                              ?.pushNamed('/ioe_questions');
                        } else if (products[index].title == "NEC Syllabus") {
                          navigatorKey.currentState?.pushNamed('/nec');
                        } else if (products[index].title == "News/Results") {
                          navigatorKey.currentState?.pushNamed('/news_results');
                        } else if (products[index].title ==
                            "Helpful Articles") {
                          navigatorKey.currentState?.pushNamed('/Articles');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: products[index].color,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              products[index].image,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              products[index].title,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              products[index].courses,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
