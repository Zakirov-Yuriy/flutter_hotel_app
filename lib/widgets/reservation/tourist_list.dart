// tourist_list.dart
// Используем ListView.builder для динамического создания виджетов
// Используем ListView.builder для динамического создания виджетов

import 'package:flutter/material.dart';
// Импортируйте необходимые виджеты

class TouristList extends StatelessWidget {
  final List<Widget> touristWidgets;

  const TouristList({required this.touristWidgets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemCount: touristWidgets.length,
      itemBuilder: (BuildContext context, int index) {
        return touristWidgets[index];
      },
    );
  }
}

class AddTouristButton extends StatelessWidget {
  final List<Widget> touristWidgets;
  final VoidCallback onPressed;

  const AddTouristButton({
    required this.touristWidgets,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              minimumSize: const Size(50, 50),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Добавить туриста',
                  style: TextStyle(fontSize: 22),
                ),
                Icon(
                  Icons.add,
                  color: Color.fromRGBO(13, 114, 255, 1),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
