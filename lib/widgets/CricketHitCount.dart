import 'package:flutter/material.dart';

class CricketHitCount extends StatelessWidget {
  CricketHitCount({this.hits});
  final num hits;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 12.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: hits >= 1 ? Colors.red : Colors.grey.shade800,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Container(
            width: 12.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: hits >= 2 ? Colors.red : Colors.grey.shade800,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Container(
            width: 12.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: hits >= 3 ? Colors.red : Colors.grey.shade800,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
    );
  }
}
