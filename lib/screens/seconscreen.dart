import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  final int pageLength = 2;
  final double currentIndexPage = 0;

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
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(36.0),
                                child: Container(
                                  margin: const EdgeInsets.only(top: 12),
                                  alignment: Alignment.center,
                                  width: 76,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.red[100],
                                  ),
                                  child: const Text(
                                    "Popular",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'Avenir',
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red[700],
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
