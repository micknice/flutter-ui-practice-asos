import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/carousel_home.dart';



List<StatelessWidget> splashList = [
  const CarouselHome(),
  // const SplashInfo(),
  // const SplashSupport(),
];

class ManuallyControlledSlider extends StatefulWidget {
  const ManuallyControlledSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      final double height = MediaQuery.of(context).size.height;
      return Stack(
        children: <Widget>[
          CarouselSlider(
            items: splashList.map((item) => Container(child: item)).toList(),
            options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                height: height,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 6)),
            carouselController: _controller,
          ),
          
        ],
      );
    }));
  }
}