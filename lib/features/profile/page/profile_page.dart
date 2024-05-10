import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/features/home/page/home_page.dart';
import 'package:news_app/features/detail/page/detail_page.dart';
import 'package:news_app/features/home/page/login_page.dart';
import 'package:news_app/features/enviroment/page/enviroment_page.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 10,
          top: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Profile",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          maxRadius: 55,
                          backgroundImage: AssetImage("assets/images/pat.jpg"),
                        ),
                        Positioned(
                          left: 35,
                          // right: 80,
                          bottom: -10,
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 219, 223, 226),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Robert Pattinson",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "robertpattinson309@gmail.com",
                          style: TextStyle(color: Colors.blue),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Become an actor",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Account setting",
                    style: TextStyle(color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  information("Personal Information", Icons.arrow_forward),
                  information("Notifications", Icons.arrow_forward),
                  information("Time spent", Icons.arrow_forward),
                  information("Following", Icons.arrow_forward),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Help and support",
                    style: TextStyle(color: Colors.blue),
                  ),
                  information("Privacy", Icons.arrow_forward),
                  information("Terms and Condition", Icons.arrow_forward),
                  information("FAQ and Help", Icons.arrow_forward),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Log out",
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {},
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {},
                ),
                const Text("Profile"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget information(String text, IconData iconData) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          IconButton(onPressed: () {}, icon: Icon(iconData)),
        ],
      )
    ],
  );
}