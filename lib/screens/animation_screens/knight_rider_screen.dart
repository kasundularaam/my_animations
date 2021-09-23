import 'package:flutter/material.dart';

class KnightRiderScreen extends StatefulWidget {
  final String name;
  const KnightRiderScreen({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  _KnightRiderScreenState createState() => _KnightRiderScreenState();
}

class _KnightRiderScreenState extends State<KnightRiderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.name),
      ),
    );
  }
}
