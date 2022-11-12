import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset : true,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Guest List'),
            automaticallyImplyLeading: false,
        ),
        body: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          color: msgCount[index]>=10? Colors.blue[400]:
                          msgCount[index]>3? Colors.blue[100]: Colors.grey,
                          child: Center(
                              // Text('${names[index]} (${msgCount[index]})',
                              //   style: TextStyle(fontSize: 18),
                              // ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/react.png"),child: Text('BA'),
                              )
                          ),

                        );
                      }
                  )
              )
            ]
        )
    );
  }
}