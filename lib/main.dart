import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
  var ulkeler = ["Türkçe", "Almanya", "İtalya", "Rusya", "Çin"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print("${ulkeler[index]} seçildi");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            print("Text ile ${ulkeler[index]} seçildi");
                          },
                          child: Text(ulkeler[index])),
                      Spacer(),
                      TextButton(
                        child: Text("Ülke Seç"),
                        onPressed: () {
                          print("Button ile ${ulkeler[index]} seçildi");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
