import 'package:flutter/material.dart';
import 'package:timeline__tile/Component/eventcard.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLine extends StatelessWidget {
  const MyTimeLine(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      this.eventCard});
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
          //decorate timeline line
          beforeLineStyle:
              LineStyle(color: Colors.deepPurple.shade200, thickness: 3),
          //decorate timeline Icon
          indicatorStyle: IndicatorStyle(
              width: 30,
              color: isPast
                  ? Colors.deepPurple.shade300
                  : Colors.deepPurple.shade100,
              iconStyle: IconStyle(iconData: Icons.done, color: Colors.white)),
          endChild: EventCard(
            isPast: isPast,
            child: eventCard,
          )),
    );
  }
}
