import 'package:flutter/material.dart';
import '../component/list_item.dart';
import '../modules/number.dart';
class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);
  final List<Items> colors=const[
    Items(image: 'assets/images/colors/color_black.png', jpName: 'negro', enName: 'black',sound: 'assets/sounds/colors/black.wav'),
    Items(image: 'assets/images/colors/color_brown.png', jpName: 'marrón', enName: 'brown',sound: 'assets/sounds/colors/brown.wav'),
    Items(image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'Amarelo poeirento', enName: 'dusty yellow',sound: 'assets/sounds/colors/dusty yellow.wav'),
    Items(image: 'assets/images/colors/color_gray.png', jpName: 'gris', enName: 'gray',sound: 'assets/sounds/colors/gray.wav'),
    Items(image: 'assets/images/colors/color_green.png', jpName: 'verde', enName: 'green',sound: 'assets/sounds/colors/green.wav'),
    Items(image: 'assets/images/colors/color_red.png', jpName: 'vermello', enName: 'red',sound: 'assets/sounds/colors/red.wav'),
    Items(image: 'assets/images/colors/color_white.png', jpName: 'branco', enName: 'white',sound: 'assets/sounds/colors/white.wav'),
    Items(image: 'assets/images/colors/yellow.png', jpName: 'amarelo', enName: 'yellow',sound: 'assets/sounds/colors/yellow.wav'),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.brown,
      ),
      body:ListView.builder(
          itemCount: colors.length,
          itemBuilder:(context,index)
          {
            return ListItems(number: colors[index],color: Colors.purple,itemType: 'colors',);
          }

      ),
    );
  }
}