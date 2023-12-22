import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}
class _BmiCalculatorState extends State<BmiCalculator> {
  double sliderValue = 145;
  int weight = 85;
  int age = 18;
  Color maleColor = const Color(0xFF25273B); // Set initial color
  Color femaleColor = const Color(0xFF25273B); // Set initial color

  void onTapMale() {
    setState(() {
      maleColor = const Color(0xFF55556D);
      femaleColor = const Color(0xFF25273B);
    });
  }

  void onTapFemale() {
    setState(() {
      femaleColor = const Color(0xFF55556D);
      maleColor = const Color(0xFF25273B);
    });
  }

  void onTapCancelMale() {
    setState(() {
      maleColor = const Color(0xFF25273B);
    });
  }

  void onTapCancelFemale() {
    setState(() {
      femaleColor = const Color(0xFF25273B);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202337),
      appBar: AppBar(
        title: const Text(
          "Bmi Calculator",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF25273B),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: onTapMale,
                        onTapCancel: onTapCancelMale,
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            color: maleColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 120,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        onTap: onTapFemale,
                        onTapCancel: onTapCancelFemale,
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            color: femaleColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 120,
                                color: Colors.white,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF25273B),
                  borderRadius: BorderRadius.circular(10), // Set the border radius here
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            '${sliderValue.toStringAsFixed(0)} cm',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          Slider(
                            min: 70,
                            max: 220,
                            value: sliderValue,
                            onChanged: (value) {
                              setState(() {
                                sliderValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF25273B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(
                                fontSize: 34,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: const Icon(Icons.add),
                                  iconSize: 40,
                                  color: Colors.white,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: const Icon(Icons.remove),
                                  iconSize: 40,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF25273B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                fontSize: 34,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              age.toString(),
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: const Icon(Icons.add),
                                  iconSize: 40,
                                  color: Colors.white,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: const Icon(Icons.remove),
                                  iconSize: 40,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Set the border radius here
              child: MaterialButton(
                height: 60,
                color: const Color(0xFFE03E65),
                minWidth: double.infinity,
                onPressed: () {
                  double heightInMeters = sliderValue / 100;
                  double bmi = weight / (heightInMeters * heightInMeters);
                  String bmiString = bmi.toStringAsFixed(1);
                  String resultText = 'Result';
                  String commentText = 'Comment';

                  // Pass the selected gender to the navToResultPage function
                  navToResultPage(context, double.parse(bmiString), resultText, commentText, sliderValue, weight, age, maleColor == const Color(0xFF55556D) ? 'Male' : 'Female');
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
void navToResultPage(BuildContext context, double bmi, String result, String comment, double sliderValue, int weight, int age, String gender) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ResultPage(
        bmi: bmi,
        result: result,
        comment: comment,
        sliderValue: sliderValue,
        weight: weight,
        age: age,
        gender: gender, // Pass the gender parameter here
      ),
    ),
  );
}
