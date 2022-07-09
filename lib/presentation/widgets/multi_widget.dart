import 'package:flutter/material.dart';

class MultiWidget extends StatelessWidget {
  const MultiWidget({
    Key? key,
    required this.cityName,
    required this.cityImage,
    required this.cityNavigator,
    required this.cityShow,
  }) : super(key: key);

  final String cityName;
  final AssetImage cityImage; 
  final Widget cityNavigator;
  final String cityShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Испания',
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              'Испания - государство в Юго-Западной Европе. Это одна из крупнейших стран Европейского союза, расположенная на Пиренейском полуострове и занимающая более 2/3 его территории. Испания граничит с Португалией на западе, Францией и Андоррой на севере, Гибралтаром и Марокко на юге. Государство состоит из 17 автономных сообществ и 2 автономных городов и является конституционной монархией.',
              style: TextStyle(fontSize: 14),
            ),
            const Text(
              'Города Испании',
              style: TextStyle(fontSize: 25),
            ),
            Image(
              image: cityImage,
              width: double.maxFinite,
              height: 250,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                cityName,
                style: const TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(
              width: 182,
              height: 40,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cityNavigator),
                  );
                },
                child: Text(
                  cityShow,
                  style: const TextStyle(color: Colors.white),
                ),
                color: const Color.fromARGB(230, 47, 210, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
