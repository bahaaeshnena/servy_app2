import 'package:flutter/material.dart';
import 'package:servy_app2/src/respository/authentication_respository/authentication_respository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                AuthenticationRespository.instance.logout();
              },
              child: Text('Exit'))
        ],
      ),
    );
  }
}
