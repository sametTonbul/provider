import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/sayacmodel.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
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
            Consumer<SayacModel>(
              builder: (context, sayacModel, child) {
                return ElevatedButton(
                    onPressed: () {
                      sayacModel.sayaciArttir();
                    },
                    child: Text('Sayaç Artır'));
              },
            ),
            Consumer<SayacModel>(
              builder: (context, sayacModel, child) {
                return ElevatedButton(
                    onPressed: () {
                      sayacModel.sayaciAzalt(2);
                    },
                    child: Text('Sayaç Azalt'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
