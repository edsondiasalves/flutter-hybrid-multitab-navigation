import 'package:flutter/material.dart';

enum TabItem {
  red,
  green,
  blue,
}

Map<TabItem, String> tabName = {
  TabItem.red: 'red',
  TabItem.green: 'green',
  TabItem.blue: 'blue',
};

Map<TabItem, MaterialColor> tabColors = {
  TabItem.red: Colors.red,
  TabItem.green: Colors.green,
  TabItem.blue: Colors.blue,
};

class BottomBar extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onTabChange;
  final VoidCallback onReturn;

  const BottomBar({this.currentTab, this.onTabChange, this.onReturn});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildTab(TabItem.red),
        _buildTab(TabItem.green),
        _buildTab(TabItem.blue),
        _buildBack(),
      ],
      onTap: (index) {
        if (index < 3) {
          final tappedTab = TabItem.values[index];
          onTabChange(tappedTab);
        } else {
          onReturn();
        }
      },
    );
  }

  BottomNavigationBarItem _buildTab(TabItem item) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: _getTabColor(item),
      ),
      title: Text(
        tabName[item],
        style: TextStyle(
          color: _getTabColor(item),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBack() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.purple,
      ),
      title: Text(
        'Back',
      ),
    );
  }

  MaterialColor _getTabColor(TabItem item) {
    return currentTab == item ? tabColors[item] : Colors.grey;
  }
}
