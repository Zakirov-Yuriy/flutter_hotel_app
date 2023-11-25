import 'package:flutter/material.dart';

class AccordionInput extends StatelessWidget {
  AccordionInput({
    super.key,
    required this.name,
    required this.clue,
  });
  final String name;
  final String clue;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(246, 246, 249, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: phoneController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          labelText: name,
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            // 'Пожалуйста, введите номер телефона'
            return value;
          }
          // Здесь вы можете добавить дополнительные проверки, если необходимо
          return null;
        },
      ),
    );
  }
}
