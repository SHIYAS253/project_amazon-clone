import 'package:flutter/material.dart';

import 'package:project_amazon/home_page/home_page.dart';


class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int currentpage =0;
  final List <Widget> suma =[
home_page(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: suma[currentpage],
    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 9, 9, 9),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white24,
        unselectedFontSize: 10,
        onTap: (index){
          setState(() {
            currentpage =  index;
          });
        },
        currentIndex: currentpage,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "you",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.expand_circle_down),
            label: "more",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu",
          ),
        ],
      ),
    );
  }
}
