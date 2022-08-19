import 'package:flutter/material.dart';
import '../component/list_item.dart';
import '../modules/number.dart';
class FmailyMembersPage extends StatelessWidget {
  const FmailyMembersPage({Key? key}) : super(key: key);
  final List<Items> familyMembers=const[
    Items(image: 'assets/images/family_members/family_father.png', jpName: 'pai', enName: 'father',sound: 'assets/sounds/family_members/father.wav'),
    Items(image: 'assets/images/family_members/family_mother.png', jpName: 'nai', enName: 'mother',sound: 'assets/sounds/family_members/mother.wav'),
    Items(image: 'assets/images/family_members/family_older_brother.png', jpName: 'irman maior', enName: 'older bother',sound: 'assets/sounds/family_members/older bother.wav'),
    Items(image: 'assets/images/family_members/family_older_sister.png', jpName: 'Irmá maior', enName: 'older sister',sound: 'assets/sounds/family_members/older sister.wav'),
    Items(image: 'assets/images/family_members/family_son.png', jpName: 'fillo', enName: 'son',sound: 'assets/sounds/family_members/son.wav'),
    Items(image: 'assets/images/family_members/family_daughter.png', jpName: 'filla', enName: 'daughter',sound: 'assets/sounds/family_members/daughter.wav'),
    Items(image: 'assets/images/family_members/family_younger_brother.png', jpName: 'irmán menor', enName: 'younger brohter',sound: 'assets/sounds/family_members/younger brohter.wav'),
    Items(image: 'assets/images/family_members/family_younger_sister.png', jpName: 'irmá pequena', enName: 'younger sister',sound: 'assets/sounds/family_members/younger sister.wav'),
    Items(image: 'assets/images/family_members/family_grandfather.png', jpName: 'avó', enName: 'grand father',sound: 'assets/sounds/family_members/grand father.wav'),
    Items(image: 'assets/images/family_members/family_grandmother.png', jpName: 'avoa', enName: 'grand mother',sound: 'assets/sounds/family_members/grand mother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Colors.brown,
      ),
      body:ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder:(context,index)
          {
            return ListItems(number: familyMembers[index],color: Colors.green,itemType: 'family_members',);
          }

      ),
    );
  }
}
