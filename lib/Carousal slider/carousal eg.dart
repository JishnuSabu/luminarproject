import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: CaroSlider(),
  ));
}
class CaroSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("C slider"),
      ),
      body: CarouselSlider(
        items: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image:
                    const DecorationImage(fit: BoxFit.fill,
                        image: AssetImage("assets/IMAGES/G1.jpg"))),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image:
                    const DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/IMAGES/G1.jpg"))),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image:
                    const DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/IMAGES/G1.jpg"))),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image:
                    const DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/IMAGES/G1.jpg"))),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image:
                    const DecorationImage(fit: BoxFit.fill,
                        image: AssetImage("assets/IMAGES/G1.jpg"))),
          ),
        ],
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: .5,
          height: 200,
          enlargeCenterPage: true,
          aspectRatio: 16/9,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enableInfiniteScroll: true
        ),
      ),
    );
  }
}
