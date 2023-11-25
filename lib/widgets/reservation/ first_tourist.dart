import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/reservation/accordion_input.dart';

class FirstTourist extends StatefulWidget {
  final String touristTitle;

  const FirstTourist({required this.touristTitle, Key? key}) : super(key: key);

  @override
  _FirstTouristState createState() => _FirstTouristState();
}

class _FirstTouristState extends State<FirstTourist> {
  bool _isExpanded = false;

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        elevation: 0,
        expandedHeaderPadding: const EdgeInsets.all(0),
        expandIconColor: const Color.fromRGBO(13, 114, 255, 1),
        children: [
          ExpansionPanelRadio(
            value: 1,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(
                  widget.touristTitle,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  AccordionInput(
                      name: 'Имя', clue: 'Пожалуйста, введите ваше имя'),
                  const SizedBox(height: 16),
                  AccordionInput(
                      name: 'Фамилия',
                      clue: 'Пожалуйста, введите ваше фамилию'),
                  const SizedBox(height: 16),
                  AccordionInput(
                      name: 'Дата рождения',
                      clue: 'Пожалуйста, введите дата рождения'),
                  const SizedBox(height: 16),
                  AccordionInput(
                      name: 'Гражданство',
                      clue: 'Пожалуйста, введите ваше гражданство'),
                  const SizedBox(height: 16),
                  AccordionInput(
                      name: 'Номер загранпаспорта',
                      clue: 'Пожалуйста, введите номер загранпаспорта'),
                  const SizedBox(height: 16),
                  AccordionInput(
                      name: 'Срок действия загранпаспорта',
                      clue: 'Пожалуйста, введите срок действия загранпаспорта'),
                ],
              ),
            ),
          ),
        ],
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _isExpanded = !isExpanded;
          });
        },
        initialOpenPanelValue: _isExpanded ? 1 : -1,
      ),
    );
  }
}
