import 'package:flutter/material.dart';
import 'package:toku/modules/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/src/widgets/container.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // AudioCache player = AudioCache(prefix:'assets/sounds/numbers/');
              // player.
              // final player = AudioPlayer(playerId: 'assets/sounds/numbers/');
              // player.play('number_eight_sound.mp3');
              // AudioCache player = AudioCache(
              //   prefix: 'assets/sounds/numbers/'
              // );
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
