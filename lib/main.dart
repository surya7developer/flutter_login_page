import 'package:first_flutter_project/FirstPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RunMyApp(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.green,
      Colors.purple,
      Colors.orange,
      Colors.blue,
      Colors.red,
      Colors.yellow,
      Colors.green
    ];
    var arrNames = [
      "Ramesh",
      "Suresh",
      "Haresh",
      "Paresh",
      "Mahesh",
      "Jayesh",
      "Dinesh"
    ];
    var arrEmails = [
      "Ramesh@gmail.com",
      "Suresh@gmail.com",
      "Haresh@gmail.com",
      "Paresh@gmail.com",
      "Mahesh@gmail.com",
      "Jayesh@gmail.com",
      "Dinesh@gmail.com"
    ];

    var arrMobiles = [
      "0912356854",
      "6543121258",
      "3389986956",
      "1546496323",
      "8895262323",
      "1231132122",
      "8645534354"
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text("Item List"),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      index.toString(),
                      style: const TextStyle(
                         fontSize: 25,
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: arrColors[index],
                    margin: const EdgeInsets.only(left: 20, top: 20),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name : ${arrNames[index]}",
                            style: TextStyle(
                                color: arrColors[index],
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Email : ${arrEmails[index]}",
                            style: TextStyle(
                                color: arrColors[index],
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Mobile : ${arrMobiles[index]}",
                            style: TextStyle(
                                color: arrColors[index],
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
            itemCount: arrNames.length));
  }

  void onClick(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
