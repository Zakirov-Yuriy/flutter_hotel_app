import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                  color: const Color.fromRGBO(255, 199, 0, 0.2),
                  child: const Text(
                    '5 Превосходно',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 168, 0, 1), fontSize: 16),
                  )),
            ],
          ),
          const SizedBox(height: 8),
          Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Steigenberger Makadi',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
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
          const SizedBox(height: 16),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
              Container(
                  child: const Text(
                'от 134 673 ₽',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )),
              const SizedBox(
                width: 8,
              ),
              Container(
                  child: const Text(
                'за тур с перелётом',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(130, 135, 150, 1)),
              )),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Об отеле',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: const Color.fromRGBO(251, 251, 252, 1), // Цвет фона
                  child: const Text(
                    '3-я линия',
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
                    'Платный Wi-Fi в фойе',
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
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: const Color.fromRGBO(251, 251, 252, 1), // Цвет фона
                  child: const Text(
                    '30 км до аэропорта',
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
                    '1 км до пляжа',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(130, 135, 150, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
