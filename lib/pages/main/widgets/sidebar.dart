import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                WindowTitleBarBox(
                  child: MoveWindow(),
                ),
                const DrawerHeader(
                  child: Icon(
                    Icons.person,
                  ),
                ),
                DrawListTile(
                  icon: Icons.home,
                  title: "Home",
                  onPress: () {},
                ),
                DrawListTile(
                  icon: Icons.settings,
                  title: "Settings",
                  onPress: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class DrawListTile extends StatelessWidget {
  const DrawListTile({
    Key? key,
    required this.title,
    required this.onPress,
    required this.icon,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        size: 20,
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          title,
          style: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}