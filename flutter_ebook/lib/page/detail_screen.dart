import 'package:flutter/material.dart';
import 'package:flutter_ebook/const/book_detail.dart';
import 'package:flutter_ebook/model/book.dart';

class Detailscreen extends StatefulWidget {
  @required
  final BookDetail detail;
  const Detailscreen({Key? key, required this.detail}) : super(key: key);

  @override
  _Detail_screenState createState() => _Detail_screenState(detail);
}

class _Detail_screenState extends State<Detailscreen> {
  bool _isPressed = true;

  final BookDetail detail;

  _Detail_screenState(this.detail);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
              icon: (_isPressed == false)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                      size: 30,
                    ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.file_upload_outlined,
              size: 30,
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              BookDescriptionDetail(
                  text: detail.text,
                  authors: detail.authors,
                  description: detail.description,
                  image: detail.image)
            ],
          ),
        ));
  }
}
