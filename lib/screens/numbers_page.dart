import 'package:flutter/material.dart';

import '../component/list_item.dart';
import '../modules/number.dart';
class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Items> numbers=const[
    Items(image: 'assets/images/numbers/number_one.png', jpName: 'un', enName: 'one',sound: 'assets/sounds/numbers/number_one_sound.mp3'),
    Items(image: 'assets/images/numbers/number_two.png', jpName: 'dous', enName: 'two',sound: 'assets/sounds/numbers/number_two_sound.mp3'),
    Items(image: 'assets/images/numbers/number_three.png', jpName: 'tres', enName: 'three',sound: 'assets/sounds/numbers/number_three_sound.mp3'),
    Items(image: 'assets/images/numbers/number_four.png', jpName: 'catro', enName: 'four',sound: 'assets/sounds/numbers/number_four_sound.mp3'),
    Items(image: 'assets/images/numbers/number_five.png', jpName: 'cinco', enName: 'five',sound: 'assets/sounds/numbers/number_five_sound.mp3'),
    Items(image: 'assets/images/numbers/number_six.png', jpName: 'seis', enName: 'six',sound: 'assets/sounds/numbers/number_six_sound.mp3'),
    Items(image: 'assets/images/numbers/number_seven.png', jpName: 'sete', enName: 'seven',sound: 'assets/sounds/numbers/number_seven_sound.mp3'),
    Items(image: 'assets/images/numbers/number_eight.png', jpName: 'oito', enName: 'eight',sound: 'assets/sounds/numbers/number_eight_sound.mp3'),
    Items(image: 'assets/images/numbers/number_nine.png', jpName: 'nove', enName: 'nine',sound: 'assets/sounds/numbers/number_nine_sound.mp3'),
    Items(image: 'assets/images/numbers/number_ten.png', jpName: 'dez', enName: 'ten',sound: 'assets/sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Colors.brown,
      ),
      body:ListView.builder(
          itemCount: numbers.length,
          itemBuilder:(context,index)
          {
            return ListItems(number: numbers[index],color: Colors.orange,itemType: 'numbers',);
          }

      ),
    );
  }
}

