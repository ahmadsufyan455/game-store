import 'package:flutter/material.dart';
import 'package:game_store/models/categoy.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/utils/style.dart';
import 'package:game_store/widgets/category_card.dart';
import 'package:game_store/widgets/drawer.dart';
import 'package:game_store/widgets/game_card.dart';

class ListGame extends StatelessWidget {
  const ListGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Games', style: kAppTitle),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: kBlack),
      ),
      drawer: const NavDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return categoryCard(Icons.games, category);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Trending Now',
                style: kBodyBold.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                  itemCount: games.length,
                  itemBuilder: (context, index) {
                    final data = games[index];
                    return GameCard(game: data);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
