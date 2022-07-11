import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/utils/style.dart';

import '../pages/detail_game.dart';

class GameCard extends StatelessWidget {
  const GameCard({required this.game, Key? key}) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailGame(game: game),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Hero(
                tag: game.image!,
                child: Image.asset(game.image!, width: 100),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(game.title!, style: kBodyBold),
                  const SizedBox(height: 4.0),
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(game.category!, style: kBodyRegularSmall),
                  ),
                  const SizedBox(height: 16.0),
                  Text('\$ ${game.price!.toString()}', style: kBodyBold),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Icon(Icons.star, color: Colors.yellow.shade800),
            const SizedBox(width: 8.0),
            Text(game.rating!.toString(), style: kBodyRegular),
          ],
        ),
      ),
    );
  }
}
