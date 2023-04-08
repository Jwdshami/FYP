import 'package:flutter/material.dart';


class LearningPortal extends StatefulWidget {
  const LearningPortal({Key? key}) : super(key: key);

  @override
  _LearningPortalState createState() => _LearningPortalState();
}

class _LearningPortalState extends State<LearningPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Learning Portal"),),
    );
  }
}