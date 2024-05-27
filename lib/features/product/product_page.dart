import 'package:flutter/material.dart';
import 'package:news_app/features/product/service/product_service.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Product Page"),
          SizedBox(
            height: 250,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 18),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:
                  Provider.of<ProductProvider>(context).laptopList.length,
              itemBuilder: (context, index) {
                return Consumer<ProductProvider>(
                  builder: (BuildContext context, ProductProvider value,
                      Widget? child) {
                    return ProductItem(
                      name: value.laptopList[index],
                      onPress: () {
                        value.addProductToBookmark(
                          value.laptopList[index],
                        );
                      },
                      isSelected:
                          value.bookmarkList.contains(value.laptopList[index]),
                    );
                  },
                );
              },
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/bookmark_page");
            },
            child: Text("BookMark"),
          )
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final VoidCallback onPress;
  final String name;
  final bool isSelected;
  const ProductItem({
    super.key,
    required this.name,
    required this.onPress,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.yellow,
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              "assets/images/mountain.jpg",
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                    isSelected ? Icons.bookmark : Icons.bookmark_add_outlined),
                onPressed: onPress,
              ),
              Text("$name laptop"),
            ],
          ),
        ],
      ),
    );
  }
}
