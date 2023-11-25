import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/home/content_page.dart';
import 'package:hotel_app/widgets/home/cupertino_button.dart';
import 'package:hotel_app/widgets/home/custom_carousel_slider.dart';
import 'package:hotel_app/widgets/home/dropdown_text_search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SliderCostom(),
              SizedBox(height: 16),
              ContentPage(),
              ListSectionBaseExample(),
              CupertinoButtonExample(),
            ],
          ),
        ),
      ),
    );
  }
}
