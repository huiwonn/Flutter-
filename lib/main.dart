import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    for (var i = 1; i <= 9; i++) {
      for (var j = 1; j <= 9; j++) {
        print("$i x $j = ${i * j}\n");
      }
    }

    String gugudan = """
1 x 1 = 1 
1 x 2 = 2
""";

    return MaterialApp(
      title: '구구단 화면',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("구구단 화면"),
        ), // 구구단 화면 텍스트는 중앙에 와야함 hint : Center
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Text(gugudan, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
