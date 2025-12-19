import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:  selectPageNotifier,
      builder: (BuildContext context, dynamic selectedPage, Widget? child) {
        return  NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
          ],
          onDestinationSelected: (int value) {
            selectPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
