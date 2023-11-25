import 'package:flutter/material.dart';

class TourismData extends StatefulWidget {
  const TourismData({Key? key}) : super(key: key);

  @override
  _TourismDataState createState() => _TourismDataState();
}

class _TourismDataState extends State<TourismData> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 16),
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Информация о покупателе',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Номер телефона
              Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 246, 249, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    labelText: 'Номер телефона',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите номер телефона';
                    }
                    // Здесь вы можете добавить дополнительные проверки, если необходимо
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Электронная почта
              Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 246, 249, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    labelText: 'Электронная почта',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите электронную почту';
                    }
                    // Здесь вы можете добавить дополнительные проверки, если необходимо
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  child: const Text(
                    'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(130, 135, 150, 1),
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
