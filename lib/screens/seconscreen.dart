import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: ShowModalBottomSheet
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
              "Select the Favorities Menu",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Avenir'),
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
              "Now eat well, don't leave the house,You can choose your favorite food only with one click",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Avenir'),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 46,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red[700],
              onPrimary: Colors.white,
              minimumSize: const Size(157, 57),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
            child: const Text(
              'Next',
              style: TextStyle(
                fontFamily: "BentonSans",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Skip"),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.red[700],
              ),
            ],
          )
        ],
      ),
    );
  }
}
