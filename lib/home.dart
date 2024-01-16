import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sum/provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController text1 = TextEditingController();
    TextEditingController text2 = TextEditingController();

    final sumProvider = Provider.of<SumProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SumProvider>(
              builder: (context, value, child) {
                return Text(
                  value.sum,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: text1,
              decoration: const InputDecoration(
                  hintText: 'Enter any name or text here',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: text2,
              decoration: const InputDecoration(
                  hintText: 'Enter any name or text here',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  sumProvider.click1(text1.text);
                  sumProvider.click2(text2.text);
                },
                child: const Text('Click'))
          ],
        ),
      ),
    );
  }
}
