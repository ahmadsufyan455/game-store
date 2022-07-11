import 'package:flutter/material.dart';
import 'package:game_store/utils/style.dart';
import 'package:readmore/readmore.dart';

import '../models/game.dart';

class DetailGame extends StatefulWidget {
  const DetailGame({required this.game, Key? key}) : super(key: key);

  final Game game;

  @override
  State<DetailGame> createState() => _DetailGameState();
}

class _DetailGameState extends State<DetailGame> {
  bool isPurchase = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final data = widget.game;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(data.title!, style: kBodyRegular),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kBlack,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Hero(
                        tag: data.image!,
                        child: Container(
                          width: screenSize.width,
                          height: screenSize.height * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage(data.image!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              data.title!,
                              style: kBodyBold.copyWith(fontSize: 18.0),
                            ),
                          ),
                          Text(
                            '\$ ${data.price!.toString()}',
                            style: kBodyBold.copyWith(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow.shade800),
                          const SizedBox(width: 8.0),
                          Text('${data.rating!} - 36K Reviews',
                              style: kBodyRegular),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ReadMoreText(
                        data.overview!,
                        style: kBodyRegular,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      isPurchase ? Colors.grey.shade600 : Colors.green.shade600,
                    ),
                    minimumSize: MaterialStateProperty.all(Size.infinite),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isPurchase = true;
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Yay! you made it!'),
                        ),
                      );
                    });
                  },
                  child: Text(
                    isPurchase ? 'Purchased ☑️' : 'Purchase',
                    style: kBodyRegular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
