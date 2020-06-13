import 'package:flutter/material.dart';

class GreenColorsListPage extends StatelessWidget {
  GreenColorsListPage({this.onPush});

  final MaterialColor color = Colors.green;
  final String title = 'Green';
  final ValueChanged<int> onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
        backgroundColor: color,
      ),
      body: Container(
        color: Colors.white,
        child: _buildList(),
      ),
    );
  }

  final List<int> materialIndices = [
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50
  ];

  Widget _buildList() {
    return ListView.builder(
      itemCount: materialIndices.length,
      itemBuilder: (BuildContext content, int index) {
        int materialIndex = materialIndices[index];
        return Container(
          color: color[materialIndex],
          child: ListTile(
            title: Text('$materialIndex', style: TextStyle(fontSize: 24.0)),
            trailing: Icon(Icons.chevron_right),
            onTap: () => onPush(materialIndex),
          ),
        );
      },
    );
  }
}
