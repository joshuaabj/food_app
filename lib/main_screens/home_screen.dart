import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String timeText = "";
  String dateText = "";

  String formatCurrentLiveTime(DateTime time) {
    return DateFormat("hh:mm:ss a").format(time);
  }

  String formatCurrentDate(DateTime date) {
    return DateFormat("dd MMMM, yyyy").format(date);
  }

  getCurrentLiveTime() {
    final DateTime timeNow = DateTime.now();
    final String liveTime = formatCurrentLiveTime(timeNow);
    final String liveDate = formatCurrentDate(timeNow);
    if (mounted) {
      setState(() {
        timeText = liveTime;
        dateText = liveDate;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //time
    timeText = formatCurrentLiveTime(DateTime.now());

    //date
    dateText = formatCurrentDate(DateTime.now());

    Timer.periodic(const Duration(seconds: 1), (timer) {});
    getCurrentLiveTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.amber, Colors.cyan],
                begin: FractionalOffset(0, 0),
                end: FractionalOffset(1, 0),
                stops: [0, 1],
                tileMode: TileMode.clamp),
          ),
        ),
        title: const Text(
          'welcome to Admin web portal',
          style: TextStyle(fontSize: 20, letterSpacing: 3, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "$timeText\n$dateText",
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //user activate and block accounts button ui
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //active
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                  label: Text(
                    "${"Activate users".toUpperCase()}\n${"account".toUpperCase()}",
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white, letterSpacing: 3),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(40),
                    backgroundColor: Colors.amber,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                //block
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.block_flipped,
                    color: Colors.white,
                  ),
                  label: Text(
                    "${"Block users".toUpperCase()}\n${"account".toUpperCase()}",
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white, letterSpacing: 3),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(40),
                    backgroundColor: Colors.cyan,
                  ),
                ),
              ],
            ),
            //sellers activate and block button ui

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //active
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                  label: Text(
                    "${"Activate sellers".toUpperCase()}\n${"account".toUpperCase()}",
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white, letterSpacing: 3),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(40),
                    backgroundColor: Colors.cyan,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                //block
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.block_flipped,
                    color: Colors.white,
                  ),
                  label: Text(
                    "${"Block sellers".toUpperCase()}\n${"account".toUpperCase()}",
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white, letterSpacing: 3),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(40),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ],
            ),

            //riders activate and blocks users account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //active
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                  label: Text(
                    "${"Activate rider".toUpperCase()}\n${"account".toUpperCase()}",
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white, letterSpacing: 3),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(40),
                    backgroundColor: Colors.amber,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                //block
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.block_flipped,
                    color: Colors.white,
                  ),
                  label: Text(
                    "${"Block rider".toUpperCase()}\n${"account".toUpperCase()}",
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white, letterSpacing: 3),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(40),
                    backgroundColor: Colors.cyan,
                  ),
                ),
              ],
            ),

            //logout Button
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              label: Text(
                "Logout".toUpperCase(),
                style: const TextStyle(
                    fontSize: 16, color: Colors.white, letterSpacing: 3),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(40),
                backgroundColor: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
