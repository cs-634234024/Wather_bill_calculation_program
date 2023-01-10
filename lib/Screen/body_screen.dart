import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/text_field_screen.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TextFieldScreen(),
        // Column(
        //   children: [
        //     BottomCalculate(
        //       resultPage: () {},
        //     )
        //   ],
        // )
      ],
    );
  }
}
