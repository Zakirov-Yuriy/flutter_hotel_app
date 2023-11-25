import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hotel_app/screens/steigenberger_makadi/steigenberger_makadi.dart';

class CupertinoButtonExample extends StatelessWidget {
  const CupertinoButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        width: double.infinity, // Растягиваем контейнер на всю ширину
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0), // Опциональные отступы
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 12),

              // новая кнопка
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 28),
                  child: ElevatedButton(
                    onPressed: () {
                      // Используем Navigator для перехода на новый экран
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SteigenbergerMakadi(
                            title: 'SteigenbergerMakadi',
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
                      'К выбору номера',
                      style: TextStyle(
                          fontSize: 16), // устанавливаем размер текста
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
