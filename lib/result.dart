import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final double bmi;
  final String comment;
  final double sliderValue;
  final int weight;
  final int age;
  final String gender;

  const ResultPage({super.key,
    required this.result,
    required this.bmi,
    required this.comment,
    required this.sliderValue,
    required this.weight,
    required this.age,
    required this.gender,
  });

  Color getBmiColor(double bmi) {
    if (bmi < 16.0) {
      return Colors.red;
    } else if (bmi >= 16.0 && bmi < 18.5) {
      return Colors.orange;
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return Colors.green;
    } else if (bmi >= 25 && bmi < 29.9) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  String getBmiComment(double bmi) {
    if (bmi < 16.0) {
      return "Very Severely Underweight! Please Seek Medical Attention! 🚑";
    } else if (bmi >= 16.0 && bmi < 18.5) {
      return "Underweight! Consider Gaining Some Weight for Health! 🥪";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Congratulations! You're at a Healthy Weight! 🌟";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight! Focus on Exercise and a Balanced Diet! 🏋️‍♂️";
    } else {
      return "Obese! Let's Work on a Healthier Lifestyle! 🥦";
    }
  }

  @override
  Widget build(BuildContext context) {
    Color bmiColor = getBmiColor(bmi);
    String bmiComment = getBmiComment(bmi);

    return Scaffold(
      backgroundColor: const Color(0xFF202337),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2F344D),
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height: ${sliderValue.toStringAsFixed(0)} cm',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Weight: $weight kg',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Age: $age years',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: bmiColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    bmiComment,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              height: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE03E65),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Re-Calculate",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}