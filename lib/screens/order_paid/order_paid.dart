import 'package:flutter/material.dart';
import 'package:hotel_app/screens/home/my_home_page.dart';

class OrderPaid extends StatelessWidget {
  const OrderPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Заказ оплачен',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 122),
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(246, 246, 249, 1),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/Popper.png',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Ваш заказ принят в работу',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 329,
                  child: const Text(
                    'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromRGBO(130, 135, 150, 1)),
                  ),
                ),
              ],
            ),
          ),
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
                      builder: (context) => const MyHomePage(
                        title: 'Отель',
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
                  'Супер',
                  style: TextStyle(fontSize: 16), // устанавливаем размер текста
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
