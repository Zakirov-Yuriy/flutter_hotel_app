import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/screens/reservation/reservation_page.dart';

class CupertinoButtonMaka extends StatelessWidget {
  const CupertinoButtonMaka({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          width: double.infinity, // Растягиваем контейнер на всю ширину
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0), // Опциональные отступы
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 28),
                    child: ElevatedButton(
                      onPressed: () {
                        // Используем Navigator для перехода на новый экран
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReservationPage(
                              title: 'Бронирование',
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(343, 48),
                        // задаем размер кнопки
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // устанавливаем радиус
                        ),
                      ),
                      child: const Text(
                        'Выбрать номер',
                        style: TextStyle(
                            fontSize: 16), // устанавливаем размер текста
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
