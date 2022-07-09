import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/madrid_screen.dart';
import 'package:flutter_application_1/presentation/widgets/multi_widget.dart';

class BarselonaScreen extends StatelessWidget {
  const BarselonaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MultiWidget(
      cityImage: AssetImage('assets/images/Barselona.jpg'),
      cityName: 'Барселона',
      cityNavigator: MadridScreen(),
      cityShow: 'Смотреть Мадрид',
    );
  }
}