import 'package:flutter/material.dart';
import 'package:kuis_mobile/daftar_barang_dummy.dart';
import 'package:kuis_mobile/help.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 193, 66, 66)),
            foregroundColor:
                WidgetStatePropertyAll(Colors.white),
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HelpPage()));
          },
          child: const Text('Help!')),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Home Page', style: TextStyle(color: Colors.black)),
      ),
      body: GridView.builder(
        itemCount: supermarketItemList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.6),
        itemBuilder: (context, index) {
          SupermarketItem item = supermarketItemList[index];
          return Card(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 149, 210, 234)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: NetworkImage(item.imageUrls[0])),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(item.name),
                    ),
                  ),
                  Text(item.name),
                  Text(item.price),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
