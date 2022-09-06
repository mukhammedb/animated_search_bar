import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animated Search Bar'),
      ),
      body: Container(
        color: Colors.deepPurpleAccent[100],
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AnimSearchBar(
              width: 400,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
              color: Colors.white54,
              helpText: 'Search Text...',
              autoFocus: true,
              closeSearchOnSuffixTap: true,
              rtl: true,
              animationDurationInMilli: 500,
            )
          ],
        ),
      ),
    );
  }
}
