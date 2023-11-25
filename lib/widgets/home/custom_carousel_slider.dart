import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class SliderCostom extends StatelessWidget {
  const SliderCostom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CarouselItem> itemList = [
      CarouselItem(
        image: Image.asset('assets/images/image1.png').image,
        onImageTap: (i) {},
      ),
      CarouselItem(
        image: Image.asset('assets/images/image2.png').image,
        onImageTap: (i) {},
      ),
    ];

    return Column(
      children: [
        const SizedBox(height: 20),
        Column(
          children: [
            CustomCarouselSlider(
              items: itemList,
              height: 257,
              subHeight: 50,
              width: MediaQuery.of(context).size.width * .9,
              autoplay: true,
              showSubBackground: false,
              showText: false,
              selectedDotColor: Colors.black,
              unselectedDotColor: const Color.fromRGBO(0, 0, 0, 0.22),
            ),
          ],
        ),
      ],
    );
  }
}
