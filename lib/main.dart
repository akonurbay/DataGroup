import 'package:arsen_konurbay_day1_flutter/secondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var color = Colors.yellow;
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: color,
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: Text(
              'Arsen',
              style: TextStyle(
                color: Colors.red.shade300,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.grey),
                  child: Text('Привет, Flutter!')),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Secondscreen(),
                      ),
                    );
                  },
                  child: Text('to the second screen '),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.pink,
                  ),
                  child: Text(
                    value.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    value = 0;
                  },
                  child: Text('to 0'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        value = value + 1;
                      },
                      child: Text('+ 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        value = value + 10;
                      },
                      child: Text('+ 10'),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        value = value * 2;
                      },
                      child: Text('* 2'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        value = value * 5;
                      },
                      child: Text('* 5'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  // Apply horizontal and vertical padding
                  color: Colors.blue,
                  child: Text('change backgroud color'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    color = Colors.orange;
                  },
                  child: Text('to orange'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    color = Colors.green;
                  },
                  child: Text('to green'),
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    color = Colors.red;
                  },
                  child: Text('to red'),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/datagroup.png',
                      width: 150,
                      height: 200,
                    ),
                    SizedBox(width: 40),
                    Image.network(
                      'https://static.tildacdn.pro/tild3161-3531-4135-a362-383638343835/7.webp',
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
