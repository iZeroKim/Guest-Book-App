import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  final TextEditingController eCtrl =  TextEditingController();
  final names = ["Samuel Kimani", "Allan Doe", "John Doe"];
  final times = [
    "11/11/2022, 8:30 am",
    "11/11/2022, 8:33 am",
    "11/11/2022, 8:34 am"
  ];
  final icons = [Icons.delete];

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
                      itemCount: names.length,
                      itemBuilder: (context, index) {
                        var name = names[index][0] + names[index][1];
                        return Card(
                            child: ListTile(
                                title: Text(names[index]),
                                subtitle: Text(times[index]),
                                leading: CircleAvatar(
                                backgroundImage: AssetImage("assets/react.png"),child: Text(name.toUpperCase()),backgroundColor: Colors.deepPurple,),
                                trailing: Icon(icons[0])));
                      })
              ),

            ]
        ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Add guest"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        onPressed: () {

          setState(() {});
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Guest name'),
                  content: TextField(
                    onChanged: (value) {
                      setState(() {
                        names.add("Joe Biden");
                        times.add("Now");
                        eCtrl.clear();
                      });
                    },
                    controller: eCtrl,
                    decoration: InputDecoration(hintText: "Guest name"),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('CANCEL'),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                    ),
                    TextButton(
                      child: Text('OK'),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}