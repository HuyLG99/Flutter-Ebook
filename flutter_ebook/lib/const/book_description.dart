import 'package:flutter/material.dart';

@immutable
class BookDescription extends StatelessWidget {
  final String text;
  final String authors;
  final String description;
  final String image;

  const BookDescription(
      {Key? key,
      required this.text,
      required this.authors,
      required this.description,
      required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
              Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                width: 200,
                child: Text(
                  description,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
