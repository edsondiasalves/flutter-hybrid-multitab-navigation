import 'package:flutter/material.dart';

class GreenDetailPage extends StatelessWidget {
  final MaterialColor color = Colors.green;
  final String title = 'Green Details';
  final int materialIndex;

  GreenDetailPage(this.materialIndex);

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
