import 'package:flutter/material.dart';

class custom extends StatefulWidget {
  const custom({super.key});

  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text(
          "Custom Widget",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to refactoring tutorial",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(
              height: 15,
            ),
            Text("Press the below button to follow me on twitter"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[300]),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Pressed Follow on Twitter button"),
                  duration: Duration(seconds: 1),
                ));
              },
              child: Text("Follow On Twitter",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 20,),
            Text("Press the below button to follw me on instagram"),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[300]),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Pressed Follow on Instagram button"),
                    duration: Duration(seconds: 1),
                  ));
                },
                child: Text("Follow on Instagram",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
