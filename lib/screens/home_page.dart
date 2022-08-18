import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/category.dart';
import 'numbers_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      title: Text('Tuko',
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      ),
    ),
          body: Column(
            children: [
              Category(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                    return NumbersPage();
                  })
                  );
                },
                  text:'Numbers',
                  color:Colors.orange,
              ),
              Category(
                onTap: (){
                  print('Fmaily Tap Page');
                },
                text: 'Family Member',
                color: Colors.green,
              ),
              Category(
                onTap: (){
                  print('colors Tap Page');
                },
                text: 'Colors',
                color: Colors.purple,
              ),
              Category(
                onTap: (){
                  print('Phrases Tap Page');
                },
                text: 'Phrases',
                color: Colors.blueAccent,
              ),
            ],
          ),
          backgroundColor: Colors.blueGrey,
    );
  }
}


