import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/features/home/page/login_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1673451722547-450e1362cb39?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGF1dHVtbnxlbnwwfHwwfHx8MA%3D%3D"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    "ANTUMN",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  //Navigator.of(context).pushNamed("/login_page");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(
                        isLogin: false,
                      ),
                    ),
                  );
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
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/login_page");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(
                        isLogin: true,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Login to my account',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Center(
                child: Text(
                  "By creating account you accept terms of use and privacy policy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 13),
            ],
          ),
        ),
      ),
    );
  }
}
