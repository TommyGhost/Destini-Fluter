import 'package:destini_flutterapp/constants.dart';
import 'package:destini_flutterapp/story_brain.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  StoryBrain storyBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyBrain.getStory(),
                  style: kMainTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(15.0),
                color: Colors.blue,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      storyBrain.changeStory(1);
                    });
                  },
                  child: Center(
                    child: Text(
                      storyBrain.getChoice1(),
                      style: kMainTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storyBrain.isVisible(),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(15.0),
                  color: Colors.red,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        storyBrain.changeStory(2);
                      });
                    },
                    child: Center(
                      child: Text(
                        storyBrain.getChoice2(),
                        style: kMainTextStyle,
                        textAlign: TextAlign.center,
                      ),
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
