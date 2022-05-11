import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyText:
          'You find 10million on the ground while walking home on your way from school',
      choice1: 'You try to pick it up without anyone looking',
      choice2: 'You call attention of people around',
    ),
    Story(
      storyText:
          'You are running home with the huge bag of money in your hands',
      choice1: 'Hide it somewhere and get it back at night',
      choice2: 'Keep running home with it',
    ),
    Story(
      storyText:
          'Everyone around starts to fight for bag in turn spilling it all over the street',
      choice1: 'Join in and try to pack as much cash as you can',
      choice2: 'Leave the scene and call the police',
    ),
    Story(
      storyText:
          'You find an uncompleted building that looks abandoned and leave the money there',
      choice1: 'Change your mind and take it home now',
      choice2: 'Leave it there',
    ),
    Story(
      storyText:
          'You pack a lot of money into any and every open space in your clothes with a little in your hands amongst the chaos',
      choice1: 'Get a bag to put it in',
      choice2: 'Go home like that',
    ),
    Story(
      storyText:
          'You successfully get home with the money without raising suspicion amongst the neighbours. You start to plan your new life',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyText:
          'The Police stop you and ask why you have so much money on you and how you got it',
      choice1: 'Try to prank the officers and escape',
      choice2: 'Tell the officers the truth',
    ),
    Story(
      storyText:
          'You get home to hear news that the officers you called took money for themselves and regret calling them',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyText:
          'You get back to the building to see the bag of money has disappeared',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyText:
          "The officers tell you to release all the money to them as it's not yours",
      choice1: 'Restart',
      choice2: '',
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyText;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int changeStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 3 ||
        choiceNumber == 1 && _storyNumber == 4 ||
        choiceNumber == 1 && _storyNumber == 6) {
      _storyNumber = 5;
    } else if (choiceNumber == 1 && _storyNumber == 5 ||
        choiceNumber == 1 && _storyNumber == 7 ||
        choiceNumber == 1 && _storyNumber == 8 ||
        choiceNumber == 1 && _storyNumber == 9) {
      reStart();
    } else {
      if (choiceNumber == 2 && _storyNumber == 0) {
        _storyNumber = 2;
      } else if (choiceNumber == 2 && _storyNumber == 1) {
        _storyNumber = 5;
      } else if (choiceNumber == 2 && _storyNumber == 2) {
        _storyNumber = 7;
      } else if (choiceNumber == 2 && _storyNumber == 3) {
        _storyNumber = 8;
      } else if (choiceNumber == 2 && _storyNumber == 4) {
        _storyNumber = 6;
      } else if (choiceNumber == 2 && _storyNumber == 6) {
        _storyNumber = 9;
      }
    }
    return _storyNumber;
  }

  void reStart() {
    _storyNumber = 0;
  }

  bool isVisible() {
    if (_storyNumber == 5 ||
        _storyNumber == 7 ||
        _storyNumber == 8 ||
        _storyNumber == 9) {
      return false;
    } else {
      return true;
    }
  }
}
