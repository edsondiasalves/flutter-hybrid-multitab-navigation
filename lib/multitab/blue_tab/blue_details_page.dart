import 'package:flutter/material.dart';

class BlueDetailPage extends StatelessWidget {
  final MaterialColor color = Colors.blue;
  final String title = 'Blue Details';
  final int materialIndex;

  BlueDetailPage(this.materialIndex);

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
