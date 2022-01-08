import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Icon(Icons.score),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
               
              ),
              Spacer(),
              Text(
                "${3 * 10}/${5 * 10}",
                
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
