import 'package:flutter/material.dart';
import 'package:flutter_carousel_media_slider/carousel_media.dart';
import 'package:flutter_carousel_media_slider/flutter_carousel_media_slider.dart';
class SliderImage extends StatefulWidget {
  const SliderImage({Key? key}) : super(key: key);

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  static const kTextStyle = TextStyle(
    color: Colors.white,
    backgroundColor: Colors.black,
    fontSize: 30,
  );
  List<CarouselMedia> media = [
    CarouselMedia(
      mediaName: 'Image 1',
      mediaUrl:
      'https://images.pexels.com/photos/1172253/pexels-photo-1172253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      mediaType: CarouselMediaType.image,
      carouselImageSource: CarouselImageSource.network,
    ),
    CarouselMedia(
      mediaName: 'Image 2',
      mediaUrl:
      'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=',
      mediaType: CarouselMediaType.image,
      carouselImageSource: CarouselImageSource.network,
    ),
    CarouselMedia(
      mediaName: 'Image 5',
      mediaUrl:
      'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
      mediaType: CarouselMediaType.video,
      carouselImageSource: CarouselImageSource.network,
    ),
    CarouselMedia(
      mediaName: 'Image 3',
      mediaUrl:
      'https://st2.depositphotos.com/1006472/5665/i/600/depositphotos_56658541-stock-photo-faceless-hooded-anonymous-computer-hacker.jpg',
      mediaType: CarouselMediaType.image,
      carouselImageSource: CarouselImageSource.network,
    ),
    CarouselMedia(
      mediaName: 'Image 4',
      mediaUrl:
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4#7',
      mediaType: CarouselMediaType.video,
      carouselImageSource: CarouselImageSource.network,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // Padding(
      //   padding: const EdgeInsets.only(top: 38.0),
      //   child: Carousel(
      //     height: 50,
      //     indicatorHeight:10,
      //     indicatorBarColor: Colors.white,
      //     indicatorBarHeight:10,
      //     indicatorBarWidth:70,
      //     isCircle:true,
      //
      //     items: [
      //       Container(
      //         color: Colors.red,
      //         alignment: Alignment.center,
      //        child: Text('aaaaaaaaaaaaaaaaaaaaaaa'),
      //       ),
      //       Container(
      //         color: Colors.pinkAccent,
      //         alignment: Alignment.center,
      //         child: Text('fbbbbbbbbbbbbbbbbb'),
      //       ),
      //       Container(
      //         color: Colors.purpleAccent,
      //         alignment: Alignment.center,
      //         child: Text('ccccccccccccccccccccc'),
      //       )
      //     ],
      //   ),
      // ),
      // SizedBox(
      //   height: 150,
      //   child: FadingImagesSlider(
      //     texts: [
      //       Text(
      //         'test',
      //         style: kTextStyle,
      //       ),
      //       Text(
      //         'test2',
      //         style: kTextStyle,
      //       )
      //     ],
      //     images: [
      //       Image.asset('assets/goa.jpg',fit: BoxFit.cover,),
      //       Image.asset('assets/Pesticide-banner.jpg',fit: BoxFit.cover,)
      //     ],
      //   ),
      // ),
      FlutterCarouselMediaSlider(
        carouselMediaList: media,
        onPageChanged: (index) {
          debugPrint('Page Changed: $index');
        },
      ),
    );
  }
}
