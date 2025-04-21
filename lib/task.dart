import 'dart:io';

void main() {
  print('hello in who will win the million game \nenter your name and age please',
  );
  String name = stdin.readLineSync()!;
  if (name == "ahmed") {
    print("not allowed");
  } else {
    print('hello $name');
    print('please enter your phone number');
    String phone = stdin.readLineSync()!;
    if (phone.length == 11 &&
        (phone.startsWith("010") ||
            phone.startsWith("011") ||
            phone.startsWith("012") ||
            phone.startsWith("015"))) {
      print("thank you for enter your phone number");
      print("enter your favorite animel please");
      String animal = stdin.readLineSync()!;
      print("your favorite animel is $animal");
      int score_number = 0;
      List<Map<String, dynamic>> questions = [
        {
          "question": "what is the capital of egypt ?",
          "option": ["1-cairo", "2-alex", "3-giza", "4-tanta"],
          "answer": "cairo",

          // "option": ["1-cairo", "2-alex", "3-giza", "4-tanta"],
        },
        {
          "question": "what is best player in egypt ?",
          "option": [
            "1-emam ashour",
            "2-mohamed salah",
            "3-mohamed elshenawy",
            "4-afsha",
          ],
          "answer": "mohamed salah",
        },
        {
          "question": "what is the largest planet in our solar system?",
          "option": ["mars", "earth", "jupiter", "venus"],
          "answer": "jupiter",
        },
      ];
      print(questions[0]["question"]);
      print(questions[0]["option"]);
      String ans1 = stdin.readLineSync()!;
      print(questions[1]["question"]);
      print(questions[1]["option"]);
      String ans2 = stdin.readLineSync()!;
      print(questions[2]["question"]);
      print(questions[2]["option"]);
      String ans3 = stdin.readLineSync()!;

      if (ans1.trim() == questions[0]["answer"]) {
        print("you solve question 1 true answer , good job");
        score_number++;
      } else {
        print("you solve question 1 false answer , try again");
      }

      if (ans2.trim() == questions[1]["answer"]) {
        print("you solve question 2 true answer , good job");
        score_number++;
      } else {
        print("you solve question 2 false answer , try again");
      }

      if (ans3.trim() == questions[2]["answer"]) {
        print("you solve question 3 true answer , good job");
        score_number++;
      } else {
        print("you solve question 3 false answer , try again");
      }
      print("your score number is $score_number");
      print(
        "thank you for playing our game $name \nyour phone number is $phone",
      );
    } else {
      print("invalid phone number");
    }
  }
  print("thank you for playing our game");
}
