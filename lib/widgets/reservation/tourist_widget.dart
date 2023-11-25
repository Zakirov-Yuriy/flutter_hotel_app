import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/reservation/%20first_tourist.dart';

class TouristWidget extends StatelessWidget {
  final int index;

  const TouristWidget({required this.index, Key? key}) : super(key: key);

  String getTouristNumberWord(int number) {
    switch (number) {
      case 3:
        return 'Третий';
      case 4:
        return 'Четвертый';
      case 5:
        return 'Пятый';
      case 6:
        return 'Шестой';
      case 7:
        return 'Седьмой';
      case 8:
        return 'Восьмой';
      case 9:
        return 'Девятый';
      case 10:
        return 'Десятый';
      default:
        return 'неизвестный';
    }
  }

  @override
  Widget build(BuildContext context) {
    String touristWord = getTouristNumberWord(index + 3);

    return ListTile(
      subtitle: FirstTourist(
        touristTitle: '$touristWord турист',
      ),
    );
  }
}
