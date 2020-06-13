import 'package:flutter/material.dart';

class RedDetailPage extends StatelessWidget {
  final MaterialColor color = Colors.red;
  final String title = 'Red Details';
  final int materialIndex;

  RedDetailPage(this.materialIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          '$title[$materialIndex]',
        ),
      ),
      body: Container(
        color: color[materialIndex],
      ),
    );
  }
}
