import 'package:flutter/Material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        title: const Text("Second Screen"),
      ),
      body: Center(child: Text("Congratulations! You reached 10!", style: TextStyle(fontSize: 25),),),
    );
  }
}
