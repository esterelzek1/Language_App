import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/phrases_page.dart';
import '../component/category.dart';
import 'colors_page.dart';
import 'numbers_page.dart';
import 'package:toku/screens/family_members_page.dart';
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
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                    return FmailyMembersPage();
                  })
                  );

                },
                text: 'Family Member',
                color: Colors.green,
              ),
              Category(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                    return ColorPage();
                  })
                  );
                },
                text: 'Colors',
                color: Colors.purple,
              ),
              Category(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                    return PhrasesPage();
                  })
                  );
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


