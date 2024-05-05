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
          const SizedBox(
            height: 250.0,
          ),
          //const SizedBox(height: 16),

          const Text(
            "ANTUMN",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
            ),
            onPressed: () {
              // Navigate to sign up page
            },
            child: const Text(
              'Sign up with Google',
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/detail_page");
            },
            child: const Text(
              'Login to my account',
              style: TextStyle(color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            "By creating account you accept terms of use and privacy policy",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 13),
        ],
      ),
    );
  }
}

