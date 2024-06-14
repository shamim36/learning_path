import 'package:flutter/material.dart';
import 'package:learning_path/Screens/DashBord.dart';


class LearningPath extends StatefulWidget {
  const LearningPath({super.key});

  @override
  State<LearningPath> createState() => _LearningPathState();
}

class _LearningPathState extends State<LearningPath> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBord(),
    );
  }
}