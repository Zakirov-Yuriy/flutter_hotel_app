import 'package:flutter/material.dart';

import 'package:hotel_app/widgets/home/custom_carousel_slider.dart';
import 'package:hotel_app/widgets/steigenberger_makadi/cupertino_button_makadi.dart';

import 'package:hotel_app/widgets/steigenberger_makadi/steigenberger_makadi_content.dart';

class SteigenbergerMakadi extends StatefulWidget {
  const SteigenbergerMakadi({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SteigenbergerMakadi> createState() => _SteigenbergerMakadiState();
}

class _SteigenbergerMakadiState extends State<SteigenbergerMakadi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'SteigenbergerMakadi',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SliderCostom(),
              SteigenbergerMakadiContent(),
              CupertinoButtonMaka(),
            ],
          ),
        ),
      ),
    );
  }
}
