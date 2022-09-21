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
      title: 'Flutter Task 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white10,
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: height / 2,
          padding: const EdgeInsets.all(50),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
              image: DecorationImage(
                  image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Hi, Jin Kazama",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Spacer(),
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.white12,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: height / 2.5, bottom: 50, left: 50, right: 50),
          width: double.infinity,
          height: height / 3,
          child: Card(
            elevation: 10,
            shadowColor: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Hallo Button", style: TextStyle(fontWeight: FontWeight.w600),),
                  const Text("Pencet saya"),
                  ElevatedButton.icon(
                    onPressed: () {
                      //
                    },
                    icon: const Icon(Icons.abc_outlined, color: Colors.black,),
                    label: const Text("Pesan Test Sekarang"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(20)),
                  ),
                ]),
          ),
        )
      ],
    ));
  }
}
