import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  String text;
  PageScreen({super.key, required this.text});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Page ${widget.text}"),
    );
  }
}
