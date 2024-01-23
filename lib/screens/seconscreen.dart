import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int selectedIndex = 0;
  List<Map> screens = [
    {
      "title": "Create Account",
    },
    {
      "title": "Sign In",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Pattern.png',
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/illus2.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 195,
            height: 58,
            child: Text(
              "Select the Favorites Menu",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Avenir',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            width: 191,
            height: 58,
            child: Text(
              "Now eat well, don't leave the house. You can choose your favorite food only with one click",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Avenir',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 46,
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (var i = 0; i < screens.length; i++)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = i;
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 16),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: selectedIndex == i
                                            ? Colors.red
                                            : Colors
                                                .transparent, // Seçilen öğenin altını çiz
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    screens[i]["title"] != null
                                        ? screens[i]["title"].toString()
                                        : "Unknown Title",
                                    style: TextStyle(
                                      color: selectedIndex == i
                                          ? Colors.red
                                          : Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "avenir",
                                    ),
                                  ),
                                ),
                              ),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(157, 57),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Next',
              style: TextStyle(
                fontFamily: "BentonSans",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }
}
