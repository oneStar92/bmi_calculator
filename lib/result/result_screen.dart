import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double height;
  final double weight;

  const ResultScreen({super.key, required this.height, required this.weight});

  String _calcBmi(double bmi) {
    String result;
    if (bmi >= 35) {
      result = '고도 비만';
    } else if (bmi >= 30) {
      result = '2단계 비만';
    } else if (bmi >= 25) {
      result = '1단계 비만';
    } else if (bmi >= 23) {
      result = '과체중';
    } else if (bmi >= 18.5) {
      result = '정상';
    } else {
      result = '저체중';
    }
    return result;
  }

  Widget _buildIcon(double bmi) {
    final IconData icon;
    if (bmi >= 23) {
      icon = Icons.sentiment_very_dissatisfied;
    } else if (bmi >= 18.5) {
      icon = Icons.sentiment_satisfied;
    } else {
      icon = Icons.sentiment_dissatisfied;
    }
    return Icon(
      icon,
      color: Colors.green,
      size: 100,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _calcBmi(bmi),
              style: const TextStyle(fontSize: 36),
            ),
            _buildIcon(bmi),
          ],
        ),
      ),
    );
  }
}
