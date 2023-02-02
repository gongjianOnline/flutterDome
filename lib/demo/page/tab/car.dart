import 'package:flutter/material.dart';

class MyCar extends StatefulWidget {
  const MyCar({super.key});

  @override
  State<MyCar> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyCar> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("购物车"),
    );
  }
}
