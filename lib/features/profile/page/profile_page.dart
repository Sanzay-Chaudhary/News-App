import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/features/home/page/home_page.dart';
import 'package:news_app/features/detail/page/detail_page.dart';
import 'package:news_app/features/home/page/login_page.dart';
import 'package:news_app/features/enviroment/page/enviroment_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  void openImagePicker(ImageSource source) async {
    final XFile? pickedImage = await _picker.pickImage(source: source);
    if (pickedImage != null) {
      _image = File(pickedImage.path);

      setState(() {});
    }
  }

  final Uri _url = Uri.https("accounts.google.com");
  Future<void> openUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  dynamic data = "";
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(data)),
      ),
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
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) => Container(
                                      height: 100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                openImagePicker(
                                                    ImageSource.gallery);
                                              },
                                              child:
                                                  const Text("Open gallery")),
                                          ElevatedButton(
                                            onPressed: () {
                                              openImagePicker(
                                                  ImageSource.camera);
                                            },
                                            child: const Text("Open camera"),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        _image != null ? Image.file(_image!) : const Text(""),
                      ],
                    ),
                    const Text(
                      "Robert Pattinson",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: TextButton(
                          onPressed: () {
                            openUrl();
                          },
                          child: const Text(
                            "robertpattinson309@gmail.com",
                            style: TextStyle(color: Colors.blue),
                          ),
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

  Future<void> fetchData() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/albums/1");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final body = response.body;
      final json = jsonDecode(body);
      setState(() {
        data = json['title'];
      });
    } else {
      throw Exception("failded to load data");
    }
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
