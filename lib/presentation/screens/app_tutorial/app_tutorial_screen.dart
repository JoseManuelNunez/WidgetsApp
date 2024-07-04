import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Buscar la comida',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page editors ',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'e there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReach = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReach && page >= (slides.length - 1.5)) {
        setState(() {
          endReach = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slice) => _Slice(
                      title: slice.title,
                      caption: slice.caption,
                      imageUrl: slice.imageUrl))
                  .toList()),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: Text('Salir'),
                onPressed: () => context.pop(),
              )),
          endReach ? Positioned(
              bottom: 30,
              right: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                  child: const Text('Comenzar'),
                  onPressed: () => context.pop(),
                ),
              )) : const SizedBox()
        ],
      ),
    );
  }
}

class _Slice extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slice(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
