import 'package:flutter/material.dart';
import 'package:game_store/pages/about.dart';
import 'package:game_store/utils/style.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pocket.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person, color: kBlack),
                    title: Text('About', style: kBodyRegular),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutMe(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Text('version 1.0 | © zerodev', style: kBodyRegular),
            ),
          ],
        ),
      ),
    );
  }
}
