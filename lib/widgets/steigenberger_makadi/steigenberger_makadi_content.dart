import 'package:flutter/material.dart';

import 'package:custom_accordion/custom_accordion.dart';

class SteigenbergerMakadiContent extends StatelessWidget {
  const SteigenbergerMakadiContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 8),
          Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Стандартный с видом на бассейн или сад',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              )),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: const Color.fromRGBO(251, 251, 252, 1), // Цвет фона
                  child: const Text(
                    'Все включено',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(130, 135, 150, 1),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: const Color.fromRGBO(251, 251, 252, 1), // Цвет фона
                  child: const Text(
                    'Кондиционер',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(130, 135, 150, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomAccordion(
              title: 'Подробнее о номере',
              headerBackgroundColor: const Color.fromRGBO(3, 114, 255, 0.1),
              titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(13, 114, 255, 1),
              ),
              headerIconColor: const Color.fromRGBO(13, 114, 255, 1),
              accordionElevation: 0,
              widgetItems: const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
              Container(
                  child: const Text(
                '186 600 ₽',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )),
              const SizedBox(
                width: 8,
              ),
              Container(
                child: const Text(
                  'за 7 ночей с перелётом',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(130, 135, 150, 1)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
