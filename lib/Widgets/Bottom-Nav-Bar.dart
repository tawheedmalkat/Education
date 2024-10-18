import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              child: IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: Icon(Icons.assignment, color: Colors.orange,size: 30,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.emoji_events, color: Colors.blue,size: 30,),
              onPressed: () {},
            ),
           Icon(Icons.person, color: Colors.blue,size: 30,),

          ],
        ),
      ),
    );
  }
}