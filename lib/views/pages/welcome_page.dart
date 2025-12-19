import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20.0),
            child: Center(
              child: Image(
                height: 400,
                width: 400,
                image: AssetImage("assets/images/download.jpg"),
              ),
            ),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
