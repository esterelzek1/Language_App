import 'package:flutter/material.dart';
import '../component/list_item.dart';
import '../modules/number.dart';
import 'package:toku/modules/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Phrase> phrases=const[
    Phrase(jpName: 'non esquezas subscribirte ', enName: 'do not forget to subscribe ',sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'),
    Phrase(jpName: 'encántame a programación ', enName: 'i love_programming ',sound: 'assets/sounds/phrases/i_love_programming.wav'),
    Phrase(jpName: 'programar é doado ', enName: 'programming is easy',sound: 'assets/sounds/phrases/programming_is_easy.wav'),
    Phrase(jpName: 'onde vas ?', enName: 'where are you going ?',sound: 'assets/sounds/phrases/where_are_you_going.wav'),
    Phrase(jpName: 'como te chamas ?', enName: 'what is your name ?',sound: 'assets/sounds/phrases/what_is_your_name.wav'),
    Phrase(jpName: 'encántame o anime', enName: 'i love anime',sound: 'assets/sounds/phrases/i_love_anime.wav'),
    Phrase(jpName: 'como te sentes ?', enName: 'how are you feeling ?',sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    Phrase(jpName: 'estás vindo ?', enName: 'are you coming ?',sound:'assets/sounds/phrases/are_you_coming.wav'),
    Phrase(jpName: 'si veño', enName: 'yes im coming',sound:'assets/sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Colors.brown,
      ),
      body:ListView.builder(
          itemCount: phrases.length,
          itemBuilder:(context,index)
          {
            return PhraseItem(phrase: phrases[index],
              color: Colors.blueAccent,
              itemType: 'phrases',);
          }

      ),
    );
  }
}