import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Intro',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Flutter Intro'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const photoLinkUrl = "https://i.pravatar.cc/300";
    const position = "Flutter developer";
    const name = "Rayan Reynaldo";
    const salary = "16,600.00";

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Application"),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 165,
          child: Card(
            elevation: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(
                      child: Image.asset('images/img1.jpg')
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 150 * .3,
                      width: MediaQuery.of(context).size.width * .47,
                      child: Card(
                        child: Center(child: Text(name)),
                      ),
                    ),
                    SizedBox(
                        height: 150 * .3,
                        width: MediaQuery.of(context).size.width * .47,
                        child: Card(
                          child: Center(child: Text(position)),
                        )),
                    SizedBox(
                        height: 150 * .3,
                        width: MediaQuery.of(context).size.width * .47,
                        child: Card(
                          child: Center(child:Text(salary)),
                        ))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
