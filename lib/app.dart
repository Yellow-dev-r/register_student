import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});
  
  @override
  ConsumerState<MyApp> createState() => _MyApp();

  // This widget is the root of your application.
}
class _MyApp extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
    
  }

}