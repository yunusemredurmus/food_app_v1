import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/images/Pattern.png'),
            width: double.infinity,
            fit: BoxFit.cover,
            height: 30,
          ),
          const Padding(
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
          const SizedBox(
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
          const SizedBox(
            height: 16,
          ),
          const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image(
              image: AssetImage('assets/images/menu.png'),
              width: 350,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 41,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildMenuItem(
                  Icons.food_bank,
                  'Yemek',
                  0,
                ),
                _buildMenuItem(Icons.local_pizza, 'Pizza', 1),
                _buildMenuItem(Icons.local_drink, 'Drink', 2),
                _buildMenuItem(Icons.dangerous, 'Hot Dog', 3),
              ],
            ),
          ),

          // const SizedBox(
          //   height: 16,
          // ),
          // SizedBox(height: 250, child: ListView(Axis.horizontal, children: [

          // ]))
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label, int itemIndex) {
    bool isSelected = index == itemIndex;

    return InkWell(
      onTap: () {
        setState(() {
          index = itemIndex;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red[500] : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.red : Colors.grey.withOpacity(0.3),
          ),
        ),
        height: 41,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
