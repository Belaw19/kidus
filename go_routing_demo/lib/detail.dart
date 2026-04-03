import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String id;
  final String filter;

  const DetailPage({super.key, required this.id, required this.filter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product $id"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Showing product $id"),
            Text("Filter: $filter"),
          ],
        ),
      ),
    );
  }
}