import 'package:flutter/material.dart';
import '/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});


  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        title: const Text("CounterApp"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter Value", style: TextStyle(fontSize: 20)),
            Text("$_counter", style: TextStyle(fontSize: 35),),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 60,
                      color: Colors.green,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _counter++;

                              if (_counter == 5) {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text('Congratulations!'),
                                    content: Text('Counter value is 5!'),
                                    actions: [
                                      TextButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              }
                              
                              if(_counter == 10){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                              }
                            });
                          },
                          child: Text("+", style: TextStyle(fontSize: 25,),),
                    ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 60,
                      color: Colors.red,
                      child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            _counter --;
                          });
                        },
                        child: Text("-", style: TextStyle(fontSize: 28,),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
