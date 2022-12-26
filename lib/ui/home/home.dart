import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _MyHomePage();
  
}

class _MyHomePage extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(11.0),
  ),
      child: const Padding(
        padding:  EdgeInsets.all(8.0),
        child:  Text('Hello World'),
      )),
  );
  }

}