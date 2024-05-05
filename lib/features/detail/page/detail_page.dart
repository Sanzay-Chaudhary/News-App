import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/features/detail/widgets/catergory_title.dart';
import 'package:news_app/features/detail/widgets/down_category.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _selectedIndex = 0;
  List categoryList = [
    "Hot News",
    "Sport",
    "Politic",
    "Health",
    "Entertainment",
    "Vacancy",
    "Foreign"
  ];
  List<Map> downCategory = [
    {
      "image":
          "https://images.unsplash.com/photo-1508791290064-c27cc1ef7a9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHVyYmluZXxlbnwwfHwwfHx8MA%3D%3D",
      "text": "China is set to shetter",
      "icon": Icons.message,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1508791290064-c27cc1ef7a9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHVyYmluZXxlbnwwfHwwfHx8MA%3D%3D",
      "text": "India is a set to shetter",
      "icon": Icons.notification_add,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1508791290064-c27cc1ef7a9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHVyYmluZXxlbnwwfHwwfHx8MA%3D%3D",
      "text": "Nepal is a set to shetter",
      "icon": Icons.notification_add,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1508791290064-c27cc1ef7a9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHVyYmluZXxlbnwwfHwwfHx8MA%3D%3D",
      "text": "India is a set to shetter",
      "icon": Icons.notification_add,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1508791290064-c27cc1ef7a9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHVyYmluZXxlbnwwfHwwfHx8MA%3D%3D",
      "text": "India is a set to shetter",
      "icon": Icons.notification_add,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1508791290064-c27cc1ef7a9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHVyYmluZXxlbnwwfHwwfHx8MA%3D%3D",
      "text": "India is a set to shetter",
      "icon": Icons.notification_add,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1508791290064-c27cc1ef7a9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHVyYmluZXxlbnwwfHwwfHx8MA%3D%3D",
      "text": "India is a set to shetter",
      "icon": Icons.notification_add,
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //double screenWidth = screenSize.width;
    //double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        //  screenSize.width,

        //backgroundColor: Colors.blue,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "ANTUMN",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: IconButton(
              icon: const Icon(Icons.notifications_active_outlined),
              onPressed: () {},
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                    "https://images.unsplash.com/photo-1594794637446-96206da170be?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z3JlZW4lMjBtb3VudGFpbnxlbnwwfHwwfHx8MA%3D%3D",
                    height: 170, //screenSize.height * 0.3,
                    fit: BoxFit.cover,
                    width: double.infinity
                    //screenSize.width,
                    ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/enviroment_page");
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      child: const Text("Enviroment",
                          style: TextStyle(color: Colors.green, fontSize: 10))),
                ),
                Positioned(
                  left: 10, //screenSize.width * 0.0,
                  top: 70, //screenSize.height * 0.1,
                  child: SizedBox(
                    width: screenSize.width * 0.6,
                    child: const Text(
                      "Collapse of a mountain peak in Austria amid thawing permafrost triggers a huge rockfail",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1688607933876-5ceae237a177?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Carrot Alinyaa",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(4),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return NewsCategoryChip(
                    name: categoryList[index],
                    onPress: () {},
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            SizedBox(
              height: 380,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(4),
                children: List.generate(
                  downCategory.length,
                  (index) {
                    return DownNewsCategory(
                      text: downCategory[index]["text"],
                      image: downCategory[index]["image"],
                      icon: downCategory[index]["icon"],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
            // Handle onPressed functionality for each item here
            switch (index) {
              case 0:
                Navigator.of(context).pushNamed("/home_page");

                break;
              case 1:
                // onPressed for Search item
                break;
              case 2:
                // onPressed for Saved item
                break;
              case 3:
                // onPressed for Profile item
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.saved_search),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
