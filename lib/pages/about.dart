import 'package:flutter/material.dart';
import 'package:game_store/utils/style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me', style: kBodyRegular),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: kBlack,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/stronout.png'),
                ),
                const SizedBox(height: 24.0),
                Text(
                  'Hi there, I\'m Fyan a student. I like to playing game for pc or mobile. Let\'s create some magic with flutter code.',
                  textAlign: TextAlign.center,
                  style: kBodyRegular,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
