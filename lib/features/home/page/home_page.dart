import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 250.0,
          ),
          //const SizedBox(height: 16),

          Text(
            "ANTUMN",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),

          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 40),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/login_page");
            },
            child: Text(
              'Sign up with Google',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 40),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/detail_page");
            },
            child: Text(
              'Login to my account',
              style: TextStyle(color: Colors.green),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "By creating account you accept terms of use and privacy policy",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 13),
        ],
      ),
    );
  }
}
