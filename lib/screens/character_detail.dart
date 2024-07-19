import 'package:flutter/material.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/widgets/rating.dart';

class CharacterDetail extends StatefulWidget {
  const CharacterDetail({super.key, required this.character});

  final Character character;

  @override
  State<CharacterDetail> createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  int lastStarClicked = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.character.name} details"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: widget.character.name,
                child: Image.network(
                  widget.character.imageUrl,
                  height: height * 0.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rating(value: widget.character.averageStars),
                  Text("${widget.character.totalReviews} reviews"),
                ],
              ),
              Text(
                widget.character.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Rating(
                value: lastStarClicked,
                color: Colors.purple,
                onClick: (value) {
                  lastStarClicked = value;
                  widget.character.totalReviews++;
                  widget.character.totalStars += value;
                  setState(() {});
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.fitness_center),
                      const Text("Força"),
                      Text(widget.character.strength.toString()),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.auto_fix_high),
                      const Text("Màgia"),
                      Text(widget.character.magic.toString()),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.speed),
                      const Text("Velocitat"),
                      Text(widget.character.speed.toString()),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
