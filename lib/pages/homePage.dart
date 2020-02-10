import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interactive_platform/pages/inputPage.dart';
import 'package:interactive_platform/pages/userPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _index = 0;
  List<Widget> _viewList;
  @override
  void initState(){
    super.initState();
    _viewList = [];
    _viewList..add(HomePageContent())..add(UserPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            _openNewPage(context);
          },
          child: Icon(
            Icons.add, 
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home, 
                  color: _index == 0 ? Colors.black : Colors.grey,
                ),
                onPressed: (){
                  setState(() {
                    _index = 0;
                  });
                },
              ), 
              IconButton(
                icon: Icon(
                  Icons.person, 
                  color: _index == 1 ? Colors.black : Colors.grey,
                ),
                onPressed: (){
                  setState(() {
                    _index = 1;
                  });
                },
              ),
            ],
          ),
        ), 
        body: _viewList[_index],
      ),
    );
  }
}


class HomePageContent extends StatelessWidget {
  List<Widget> _listViewContent = [];
  HomePageContent(){
    for (int i = 0; i < 50; i++){
      var index = i % 10 + 1;
      _listViewContent.add(HomePageCard(i));
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _listViewContent,
    );
  }
}


class HomePageCard extends StatelessWidget {

  var i;
  var index;
  HomePageCard(i){
    this.i = i;
    this.index = i % 10 + 1;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                child: AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.asset("images/$index.jpg", fit: BoxFit.cover),
                ),
                padding: EdgeInsets.all(10), 
              ), 

              ListTile(
                title: Text(
                  "新增标题${i+1}", 
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                subtitle: Text(
                  "简单地说，气溶胶是一些在空气中悬浮的超小颗粒，这些颗粒还可能引发疾病",
                  maxLines: 1,
                  style: TextStyle(fontSize: 10),
                 ),
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  child: ClipOval(child: Image.asset("images/$index.jpg", fit: BoxFit.cover))
                ),
              ), 
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular((13.0))),
          ),
          elevation: 10.0,
        );
  }

}

_openNewPage(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return InputPage();
    }));
}