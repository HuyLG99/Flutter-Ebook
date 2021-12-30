import 'package:flutter/material.dart';
import 'package:flutter_ebook/const/book_description.dart';
import 'package:flutter_ebook/const/categories.dart';
import 'package:flutter_ebook/model/book.dart';
import 'package:flutter_ebook/page/detail_screen.dart';

List categories = [
  "Short stories",
  "Action & adventure",
  "Poet",
  "Scient Fiction",
  "Rumor",
];

class HomeScreen extends StatelessWidget {
  final List<Book> books;
  const HomeScreen({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              children: [
                const SizedBox(
                  height: 21,
                ),
                SizedBox(
                  height: 300,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 180,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/OIP.jpg"))),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Categories',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, i) {
                        return Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: CategoriesText(
                                text: categories[i],
                                size: 15,
                              ),
                            ));
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Recently Added',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: books.length,
                        itemBuilder: (_, i) {
                          return GestureDetector(
                            onTap: () {
                              BookDetail detail = BookDetail(
                                  text: books[i].text,
                                  authors: books[i].authors,
                                  description: books[i].description,
                                  image: books[i].image);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detailscreen(
                                          detail: detail,
                                        )),
                              );
                            },
                            child: BookDescription(
                              text: books[i].text,
                              authors: books[i].authors,
                              description: books[i].description,
                              image: books[i].image,
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetalHomePage {}

class Categories {}
