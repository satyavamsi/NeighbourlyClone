import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              title: Container(
                transform: Matrix4.translationValues(-10.0, 10.0, 0.0),
                child: Row(children: <Widget>[
                  Center(
                    child: ImageWidget(),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    margin: EdgeInsets.only(right: 20, left: 10),
                    decoration: new BoxDecoration(
                      color: Color.fromRGBO(0, 0, 60, 1),
                      borderRadius: new BorderRadius.circular(25.0),
                      border: new Border.all(
                        width: 0.0,
                        color: Colors.black,
                      ),
                    ),
                    child: IconButton(
                      color: Colors.black,
                      icon: Icon(
                        Icons.location_on,
                        size: 26,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      tooltip: 'save',
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: new BoxDecoration(
                      color: Color.fromRGBO(0, 0, 60, 1),
                      borderRadius: new BorderRadius.circular(25.0),
                      border: new Border.all(
                        width: 0.0,
                        color: Colors.black,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 26,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      tooltip: 'save',
                    ),
                  ),
                ]),
              ),
              elevation: 0.0,
              // leading: Container(
              //   alignment: Alignment.center,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       Center(
              //         child: ImageWidget(),
              //       ),
              //     ],
              //   ),
              // ),
              actions: <Widget>[
                new Container(
                  transform: Matrix4.translationValues(0.0, 10.0, 0.0),
                  margin: EdgeInsets.only(top: 5, right: 20, bottom: 10),
                  padding: EdgeInsets.only(left: 0, right: 20,),
                  decoration: new BoxDecoration(
                    color: Colors.tealAccent[400],
                    borderRadius: new BorderRadius.circular(25.0),
                    border: new Border.all(
                      width: 0.0,
                      color: Colors.black,
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.add_box,
                            size: 26,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          tooltip: 'add',
                        ),
                        Text("POST", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold ),
                        ),
                      ]),
                )
              ],
              backgroundColor: Color.fromRGBO(25, 0, 127, 0.9),
            ),
          ),
          body: Container(
            color: Color.fromRGBO(25, 0, 127, 0.9),
            child: ListView(
              children: <Widget>[
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
              ],
            ),
          )),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello'),
    );
  }
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(0),
                        child: IconButton(
                          iconSize: 24,
                          icon: Icon(Icons.more_vert),
                          tooltip: 'Increase volume by 10',
                        )),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  ImageWidget(),
                  Text(
                    'Margot',
                    style: TextStyle(
                        color: Color.fromRGBO(25, 0, 127, 0.8), fontSize: 14),
                  ),
                  Text(
                    ' - 1 day ago',
                    style: TextStyle(
                        color: Color.fromRGBO(25, 0, 127, 0.8), fontSize: 14),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(left: 42, bottom: 20),
                  child: Text(
                    'Any dasara celebrations nearby',
                    style: TextStyle(
                        fontSize: 28, color: Color.fromRGBO(25, 0, 127, 0.8)),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.star,
                            color: Color.fromRGBO(25, 0, 127, 0.5),
                          ),
                          tooltip: 'save',
                        ),
                        Text(
                          'Save',
                          style: TextStyle(
                            color: Color.fromRGBO(25, 0, 127, 0.5),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.thumb_up,
                            color: Color.fromRGBO(25, 0, 127, 0.5),
                          ),
                          tooltip: 'Like',
                        ),
                        Text(
                          'Like',
                          style: TextStyle(
                            color: Color.fromRGBO(25, 0, 127, 0.5),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.mode_comment,
                            color: Colors.deepOrange,
                          ),
                          tooltip: 'answer',
                        ),
                        Text(
                          'Answer',
                          style: TextStyle(color: Colors.deepOrange),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ...
    // AssetImage assetImage = ;
    // Image image = Image(image: assetImage);
    return Container(
      width: 36.0,
      height: 36.0,
      margin: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/margot.jpg'),
        ),
      ),
    );
    // ...
  }
}
