import 'package:flutter/material.dart';

class MainPage25 extends StatelessWidget {
  const MainPage25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SecondPage();
              },
            ),
          );
        },
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://i.pinimg.com/1200x/0d/94/4d/0d944dc6b54ca7c06a5f0b85e0e770a3.jpg",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://i.pinimg.com/1200x/0d/94/4d/0d944dc6b54ca7c06a5f0b85e0e770a3.jpg",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
