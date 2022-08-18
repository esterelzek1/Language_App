import 'dart:html';
import 'package:flutter/src/widgets/image.dart';
import 'package:flutter/src/painting/image_resolution.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
 // runApp(Hello_Gym());
 // runApp(BirthdayCard());
 // runApp(BusnissApp());
 // runApp(PointerCounter());
  runApp(const TukpApp());
}
class  Hello_Gym extends StatelessWidget{
  Hello_Gym();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Underground Gym Page '),
        ),
        floatingActionButton: FloatingActionButton(onPressed:(){}),
        body:Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 50,
              color:Colors.red,
              child:Center(child:Text('Under ground gym'),

              ),
            ),
            Container(
              height: 60,
              width: 50,
              color:Colors.green,
              child:Center(child:Text('Under ground gym'),

              ),
            ),
            Container(
              height: 60,
              width: 50,
              color:Colors.blue,
              child:Center(child:Text('Under ground gym'),

              ),
            ),
          ],
        )


      ),
    );
  }
}
class BirthdayCard extends StatelessWidget {
  const BirthdayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:Center(
         child: Image(
           image: AssetImage('imagesofapp/birthday_pic.jpeg'),
        ),
        ),
      ),
    );
  }
}
class BusnissApp extends StatelessWidget {
  const BusnissApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 122,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('imagesofapp/birthday_pic.jpg'),),
            ),
            Text(
              '   Happy Birthday Ester',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 2,
              indent: 50,
              endIndent: 50,
              height: 20,

            ),


            Container(
              height: 65,
              width: 380,
              //padding: EdgeInsets.all(10),
              child:
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                child: ListTile(
                  leading: Icon(
                      Icons.person,
                      size: 10,
                      color: Color(0XFF2B475E)
                  ),
                  title: Text(
                    'first name _ last name ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                height: 40,
                width: 350,

                child: Row(
                  children: [

                    Icon(Icons.phone,
                        color: Color(0XFF2B475E)
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child:
                      Text('(+2)1200789165', style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                height: 40,
                width: 350,

                child: Row(
                  children: [

                    Icon(Icons.mail,
                        color: Color(0XFF2B475E)
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child:
                      Text(
                        'fname_lname@gmail.com',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class PointerCounter extends StatefulWidget {

  @override
  State<PointerCounter> createState() => _PointerCounterState();
}
class _PointerCounterState extends State<PointerCounter> {
  int teamApoints=0;
  int teamBpoints=0;


@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar:AppBar(
            backgroundColor: Colors.orange,

            title: Text('Pointer Counter'),
          ) ,
          body:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child:Column(children: [
                      Text('Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),

                        ),
                        onPressed: ()
                      {
                        setState(()
                        {
                          teamApoints++;
                        });

                      },

                        child: Text('add 1 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),),
                      ),
                      Spacer(flex: 1,),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),onPressed: ()
                      {
                        setState(()
                        {
                          teamApoints+=2;
                        });

                      },
                        child: Text('add 2 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),),
                      ),
                      Spacer(flex: 1,),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),onPressed: ()
                      {
                        setState(()
                        {
                          teamApoints+=3;
                        });

                      },
                        child: Text('add 3 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),),
                      ),
                      Spacer(flex: 4,),

                    ],
                    ),),
                  Container(
                    height: 500,
                    child:VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),),
                  Container(
                    height: 500,
                    child:Column(children: [
                      Text('Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),onPressed: ()
                      {
                      setState(()
                      {
                      teamBpoints++;
                      });

                      },
                        child: Text('add 1 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),),
                      ),
                      Spacer(flex: 1,),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),onPressed: ()
                      {
                        setState(() {
                          teamBpoints+=2;
                        });

                      },
                        child: Text('add 2 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),),
                      ),
                      Spacer(flex: 1,),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: ()
                        {
                          setState(() {
                            teamBpoints+=3;
                          });

                        },
                        child: Text('add 3 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),),
                      ),
                      Spacer(flex: 4,),
                    ],
                    ) ,
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: ()
              {
                setState(()
                {
                  teamApoints=0;
                  teamBpoints=0;
                });
              },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),),
              ),

            ],
          )
      ),
    );
}
}
class TukpApp extends StatelessWidget {
  const TukpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),

    );
  }









  
  






