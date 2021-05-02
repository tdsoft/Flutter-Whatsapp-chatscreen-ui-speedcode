import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 7, 94, 84)),
      home: MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_outlined),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: "CALLS"),
              Tab(text: "CHATS"),
              Tab(text: "CONTACTS"),
            ],
          ),
          title: Text(widget.title),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            _getChatScreen(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  _getChatScreen() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(8),
            leading: CircleAvatar(
              radius: 30,
              child: Icon(Icons.person_outline),
            ),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Title"),
                    Text("08:23 AM", style: TextStyle(color: index == 0 ? Color(0xff14D15E) : Colors.black),),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "This is the message This is the message This is the message",
                        style: TextStyle(color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                        height: 24,
                        width: 24,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff14D15E),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child:
                            Text("3", style: TextStyle(color: Colors.white))),
                  ],
                ),
                SizedBox(height: 8,),
                Container(
                  height: 1,
                  color: Colors.grey,
                )
              ],
            ),
          );
        });
  }
}
