import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '用户信息', 
                style: TextStyle(color: Colors.black),),
              centerTitle: true,
              collapseMode: CollapseMode.pin,
              background: Image.asset("images/11.png", fit: BoxFit.fill),
            ),
            expandedHeight: 230.0,
            floating: false,
            pinned: true,
            snap: false,
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add, color: Colors.black,),
                onPressed: () {
                  print("添加");
                },
              ),
              IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.black,),
                onPressed: () {
                  print("更多");
                },
              ),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item ${index+1}')),
              childCount: 30, 
            ),
          )
        ],
      ),
    );
  }
}