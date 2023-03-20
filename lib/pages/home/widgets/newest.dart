import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});

  final List<Game> games = Game.games();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: games.map((game) => Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                game.icon,
                width: 60,
              ),
            ),
           Column(
            children: [
               Text(game.name),
            ],
           )
          ],
          ),
        ))
        .toList(),
      ),
    );
  }
}
