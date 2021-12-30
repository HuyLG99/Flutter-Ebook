import 'package:flutter/material.dart';
import 'package:flutter_ebook/model/book.dart';
import 'package:flutter_ebook/page/home_screen.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [
    HomeScreen(books: books),
    Container(),
    Container(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Lê Huy Ebook',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Explore", icon: Icon(Icons.explore)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings))
          ]),
    );
  }
}

List<Book> books = [
  Book(
    text: "Maria:or,The Wrongs of Woman",
    authors: 'Albert Einstein',
    description:
        'engages first-time philosophy readers on a guided tour through the core concepts, questions, methods, arguments, and theories of epistemology—the branch of philosophy devoted to the study of knowledge. The book progresses systematically while placing key ideas and thinkers in historical and contemporary context. Central topics include the analysis of knowledge, the nature of epistemic justification, rationalism vs. empiricism, skepticism, the value of knowledge, the ethics of belief, Bayesian epistemology, social epistemology, and feminist epistemologies.Any man who reads too much and uses his own brain too little falls into lazy habits of thinking.',
    image: '1.jpg',
  ),
  Book(
    text: "Tender Buttons",
    authors: 'Mark Twain',
    description:
        'A person who won’t read has no advantage over one who can’t read.',
    image: 'B.jpg',
  ),
  Book(
    text: "Making",
    authors: 'Louisa May Alcott',
    description:
        'Good books, like good friends, are few and chosen; the more select, the more enjoyable.',
    image: 'C.jpg',
  ),
  Book(
    text: 'Thinking of the moon',
    authors: 'Alcott Wiliam',
    description:
        'The more enjoyable. Danger is just a alert, no come from you but it make you die any where',
    image: 'R.jpg',
  ),
  Book(
    text: 'The Day the World Came to Town',
    authors: 'Alcott Wiliam',
    description:
        'Jim DeFede has been an award-winning journalist for sixteen years, first with the Spokesman-Review in Spokane, Washington, and then with the Miami New Times. His work has appeared in Talk, The New Republic, and Newsday. He is currently a metro columnist for the Miami Herald.',
    image: 'OIP.jpg',
  ),
];
