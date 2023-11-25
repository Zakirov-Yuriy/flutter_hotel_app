import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/reservation/information_page.dart';

class ReservationContentPage extends StatelessWidget {
  const ReservationContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 120, // Установите высоту контейнера равной 120
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              color: Colors.white,
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 20)),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 7, bottom: 7, right: 2),
                            color: const Color.fromRGBO(255, 199, 0, 0.2),
                            child: const Icon(
                              Icons.star,
                              color: Color.fromRGBO(255, 168, 0, 1),
                              size: 16,
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, right: 10),
                              color: const Color.fromRGBO(255, 199, 0, 0.2),
                              child: const Text(
                                '5 Превосходно',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 168, 0, 1),
                                    fontSize: 16),
                              )),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Steigenberger Makadi',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          )),
                      const SizedBox(height: 8),
                      Container(
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(13, 114, 255, 1)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 280, // Установите высоту контейнера равной 120
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              color: Colors.white,
              child: const Column(
                children: [
                  Information(label: 'Вылет из', value: 'Санкт-Петербург'),
                  SizedBox(height: 16),
                  Information(label: 'Страна, город', value: 'Египет, Хургада'),
                  SizedBox(height: 16),
                  Information(label: 'Даты', value: '19.09.2023 – 27.09.2023'),
                  SizedBox(height: 16),
                  Information(label: 'Кол-во ночей', value: '7 ночей'),
                  SizedBox(height: 16),
                  Information(label: 'Отель', value: 'Steigenberger Makadi'),
                  SizedBox(height: 16),
                  Information(
                      label: 'Номер',
                      value: 'Стандартный с видом на бассейн или сад'),
                  SizedBox(height: 16),
                  Information(label: 'Питание', value: 'Все включено'),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
