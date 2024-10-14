import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';

class CounterFunction extends StatefulWidget {
  const CounterFunction({super.key});

  @override
  State<CounterFunction> createState() => _CounterFunctionState();
}

class _CounterFunctionState extends State<CounterFunction> {
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (_counter > 1) _counter--;
            });
          },
          child: Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xff7a7977), width: 2),
            ),
            child: const Center(
              child: Icon(Icons.remove,
                  size: 19, color: Color.fromARGB(255, 30, 28, 28)),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '$_counter',
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xFF27214D), // Matches the color in your Figma design
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _counter++;
            });
          },
          child: Container(
            width: 26,
            height: 26,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.Container2Color, // Light orange background
            ),
            child: const Center(
              child: Icon(Icons.add,
                  size: 19, color: AppColors.themeColor), // Orange plus icon
            ),
          ),
        ),
      ],
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        width: 26,
        height: 26,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.Container2Color, // Light orange background
        ),
        child: const Center(
          child: Icon(Icons.add,
              size: 19, color: AppColors.themeColor), // Orange plus icon
        ),
      ),
    );
  }
}
