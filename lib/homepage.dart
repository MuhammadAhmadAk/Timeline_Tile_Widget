import 'package:flutter/material.dart';
import 'package:timeline__tile/Component/mytimeline.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            MyTimeLine(
                isFirst: true,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "ORDER DELIVERED",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            MyTimeLine(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "ORDER CONFIRMED",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            MyTimeLine(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "ORDER SHIPPED",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            MyTimeLine(
                isFirst: false,
                isLast: true,
                isPast: false,
                eventCard: Text(
                  "DELIVERED",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
          ],
        ),
      )),
    );
  }
}
