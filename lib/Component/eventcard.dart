import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.isPast, this.child});
  final bool isPast;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color:
              isPast ? Colors.deepPurple.shade300 : Colors.deepPurple.shade100,
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
