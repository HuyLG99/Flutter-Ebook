import 'package:flutter/material.dart';

@immutable
class BookDescriptionDetail extends StatelessWidget {
  final String text;
  final String authors;
  final String description;
  final String image;

  const BookDescriptionDetail(
      {Key? key,
      required this.text,
      required this.authors,
      required this.description,
      required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // onTap: onPressed(),
        child: Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.blue,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/" + image,
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            text,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          authors,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 220,
                            child: Row(
                              children: [
                                Container(
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.blueAccent),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Criminal',
                                        style:
                                            TextStyle(color: Colors.blueAccent),
                                      ),
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.blueAccent),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Life',
                                        style:
                                            TextStyle(color: Colors.blueAccent),
                                      ),
                                    ))
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.download,
                                color: Colors.white,
                              ),
                              Text(
                                'Download Epub',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Book Description',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                const Divider(
                  height: 20,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(description, style: const TextStyle(fontSize: 16)),
                const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Show less',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            )));
  }
}
