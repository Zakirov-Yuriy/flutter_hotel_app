import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/reservation/accordion_input.dart';

class SecondTourist extends StatefulWidget {
  const SecondTourist({Key? key}) : super(key: key);

  @override
  _SecondTouristState createState() => _SecondTouristState();
}

class _SecondTouristState extends State<SecondTourist> {
  int _index = -1;

  // Объявим контроллеры внутри класса
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        elevation: 0,
        expandedHeaderPadding: const EdgeInsets.all(0),
        expandIconColor: Color.fromRGBO(13, 114, 255, 1),
        children: [
          ExpansionPanelRadio(
            value: 1,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return const ListTile(
                title: Text(
                  'Второй турист',
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
            _index = isExpanded ? -1 : index;
          });
        },
        initialOpenPanelValue: _index,
      ),
    );
  }
}
