import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/barselona_screen.dart';
import 'package:flutter_application_1/presentation/widgets/multi_widget.dart';

class MadridScreen extends StatelessWidget {
  const MadridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MultiWidget(
      cityImage: AssetImage('assets/images/Madrid.jpg'),
      cityName: 'Мадрид',
      cityNavigator: BarselonaScreen(),
      cityShow: 'Смотреть Барселону',
    );
  }
}