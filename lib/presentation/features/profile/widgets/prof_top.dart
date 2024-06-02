import 'package:flutter/material.dart';

class TopPanelProf extends StatefulWidget {
  const TopPanelProf({super.key});

  @override
  State<TopPanelProf> createState() => _TopPanelProfState();
}

class _TopPanelProfState extends State<TopPanelProf> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/149/149071.png'),
              ),
              Positioned(
                bottom: -14,
                left: 60,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo), color: Colors.white,),
              ),
            ],
          ),
          SizedBox(width: 10,),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text('Олег Пак', style: TextStyle(color: Colors.white, fontSize: 25),),
          ),
        ],
      ),
    );
  }
}