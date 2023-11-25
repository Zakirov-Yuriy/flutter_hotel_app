import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/reservation/information_footer.dart';

class TourCost extends StatelessWidget {
  const TourCost({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Container(
        padding: const EdgeInsets.only(top: 16),
        color: Colors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InformationFooter(label: 'Тур', value: '186 600 ₽'),
            SizedBox(height: 16),
            InformationFooter(label: 'Топливный сбор', value: '9 300 ₽'),
            SizedBox(height: 16),
            InformationFooter(label: 'Сервисный сбор', value: '2 136 ₽'),
            SizedBox(height: 16),
            InformationFooter(label: 'К оплате', value: '198 036 ₽'),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
