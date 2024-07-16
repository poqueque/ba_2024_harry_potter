import 'package:flutter/material.dart';

class Harry extends StatelessWidget {
  const Harry({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Harry Potter App"),
          backgroundColor: Colors.deepPurpleAccent.shade100,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://static.wikia.nocookie.net/esharrypotter/images/8/8d/PromoHP7_Harry_Potter.jpg/revision/latest?cb=20160903184919",
                height: height * 0.5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star_border),
                      Icon(Icons.star_border),
                    ],
                  ),
                  Text("89 reviews"),
                ],
              ),
              const Text(
                "Harry Potter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.fitness_center),
                      Text("Força"),
                      Text("9"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.auto_fix_high),
                      Text("Màgia"),
                      Text("10"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.speed),
                      Text("Velocitat"),
                      Text("8"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
