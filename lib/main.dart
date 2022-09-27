import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/ikincisayfa.dart';
import 'package:untitled/sayacmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SayacModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<SayacModel>(
              builder: (context, sayacModel, child) {
                return Text('${sayacModel.sayaciOku()}',
                    style: TextStyle(fontSize: 30));
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Text('Geçis Yap'))
          ],
        ),
      ),
    );
  }
}
