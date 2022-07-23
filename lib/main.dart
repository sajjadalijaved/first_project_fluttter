import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(
              label: 'menu',
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              label: 'search',
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        actions: [
          Icon(Icons.favorite),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Text(
                'Pakistan',
                style: Theme.of(context).textTheme.headline2,
              ),
              Ui(),
              Container(
                child: const Center(
                  child: Text(
                    'Ali',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
                color: Colors.brown,
                width: 100,
                height: 100,
              ),
              Container(
                child: const Center(
                  child: Text(
                    'Mohsin',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                color: Colors.yellow,
                width: 100,
                height: 100,
              ),
              Container(
                child: const Center(
                  child: Text(
                    'sajjad',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                color: Colors.purple,
                width: 100,
                height: 100,
              ),
              Container(
                child: const Center(
                  child: Text(
                    'Usman',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              Container(
                child: const Center(
                  child: Text(
                    'sajjad',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Smart proxy',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              'Share',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              'Rate Us',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              'Save',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              'FAQ',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              'Settings',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              'About',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const CircleAvatar(
              child: Image(
                image: NetworkImage(
                    'https://pbs.twimg.com/media/Eu7oCq2WQAEyVnt.png'),
              ),
            ), //Icon(Icons.add),
            onPressed: () {},
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

Widget Ui() {
  return CircularProgressIndicator();
}



// Container(
//               width: 50,
//               height: 40,
//               child: const CircleAvatar(
//                 child: Image(
//                   image: NetworkImage(
//                       'https://pbs.twimg.com/media/Eu7oCq2WQAEyVnt.png'),
//                 ),
//               ),
//             ), 