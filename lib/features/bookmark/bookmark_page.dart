import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../product/product_page.dart';
import '../product/service/product_service.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({super.key});

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Book mark Page"),
          Consumer<ProductProvider>(builder:
              (BuildContext context, ProductProvider value, Widget? child) {
            return SizedBox(
              height: 250,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 18),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: value.bookmarkList.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    name: value.bookmarkList[index],
                    onPress: () {
                      value.addProductToBookmark(value.bookmarkList[index]);
                    },
                    isSelected:
                        value.bookmarkList.contains(value.laptopList[index]),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
