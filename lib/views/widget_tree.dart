import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/notifiers.dart';
import 'package:my_flutter_app/views/pages/home_page.dart';
import 'package:my_flutter_app/views/pages/profile_page.dart';
import 'package:my_flutter_app/views/pages/settings_page.dart';
import 'package:my_flutter_app/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), SettingsPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmarks"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              darkModeNotifier.value = !darkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: darkModeNotifier,
              builder: (BuildContext context, dynamic darkMode, Widget? child) {
                return darkMode
                    ? Icon(Icons.light_mode)
                    : Icon(Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return ProfilePage();
              //     },
              //   ),
              // );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfilePage(
                      title: "Profile Page",
                    ); //?Transfering the data btw pages.
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectPageNotifier,
        builder: (BuildContext context, dynamic selectPage, Widget? child) {
          return pages.elementAt(selectPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
