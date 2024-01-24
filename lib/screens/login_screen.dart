import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/images/Pattern.png'),
            width: double.infinity,
            fit: BoxFit.cover,
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_outlined,
                  size: 30,
                ),
                Icon(Icons.person_outline, size: 30),
              ],
            ),
          ),
          SizedBox(
            width: 311,
            height: 36,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Search",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 233, 225, 225),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 233, 225, 225),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image(
              image: AssetImage('assets/images/menu.png'),
              width: 350,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
