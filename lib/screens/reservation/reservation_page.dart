import 'package:flutter/material.dart';
import 'package:hotel_app/screens/order_paid/order_paid.dart';
import 'package:hotel_app/widgets/reservation/%20first_tourist.dart';
import 'package:hotel_app/widgets/reservation/%20tour_cost.dart';
import 'package:hotel_app/widgets/reservation/%20tourism_data.dart';
import 'package:hotel_app/widgets/reservation/reservation_content_page.dart';
import 'package:hotel_app/widgets/reservation/second_tourist.dart';
import 'package:hotel_app/widgets/reservation/tourist_list.dart';
import 'package:hotel_app/widgets/reservation/tourist_widget.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key, required this.title});
  final String title;

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  List<Widget> touristWidgets = []; // Список виджетов туристов

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Бронирование',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 8),
              const ReservationContentPage(),
              const SizedBox(height: 8),
              const TourismData(),
              const SizedBox(height: 8),
              const FirstTourist(
                touristTitle: 'Первый турист',
              ),
              const SizedBox(height: 8),
              const SecondTourist(),
              const SizedBox(height: 8),
              TouristList(touristWidgets: touristWidgets),
              AddTouristButton(
                touristWidgets: touristWidgets,
                onPressed: () {
                  setState(() {
                    touristWidgets
                        .add(TouristWidget(index: touristWidgets.length));
                  });
                },
              ),
              const SizedBox(height: 8),
              const TourCost(),
              const SizedBox(height: 8),

              // Кнопка для перехода на новый экран
              Container(
                padding: EdgeInsets.only(bottom: 28),
                child: ElevatedButton(
                  onPressed: () {
                    // Используем Navigator для перехода на новый экран
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderPaid(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(343, 48),
                    // задаем размер кнопки
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // устанавливаем радиус
                    ),
                  ),
                  child: const Text(
                    'Оплатить 198 036 ₽',
                    style:
                        TextStyle(fontSize: 16), // устанавливаем размер текста
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
