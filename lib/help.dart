import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.cyan,
        title: const Text('Bantuan dan Dukungan', style: TextStyle(color: Colors.black)),
      ),
      body: const Padding(padding: EdgeInsets.only(top: 40),
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('assets/customerService.png'),
                )
              ],
            ),
          ),
        ),
      ),
   );
  }
}