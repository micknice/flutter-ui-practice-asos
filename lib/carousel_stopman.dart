import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CarouselStopman extends StatefulWidget {
  const CarouselStopman({Key? key}) : super(key: key);

  @override
  State<CarouselStopman> createState() => _CarouselStopmanState();
}

class _CarouselStopmanState extends State<CarouselStopman> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/pexels-ba-tik-3753682-960x540-25fps.mp4',
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: 360,
              child: Stack(
                children: [
                  FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        _controller.play();
                        return ClipRect(
                          child: OverflowBox(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                child: VideoPlayer(_controller),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  const Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'STOPMAN',
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 4,
                          height: 516,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.black)))),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: 4,
                          height: 516,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.black)))),
                ],
              ),
            ),
            const Padding(
              
              padding: EdgeInsets.all(8.0),
              child: Stack(children: [
                
                Center(
                  child: SizedBox(
                    height: 100,
                    width: 360,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.black)),
                  ),
                ),
                Text('SHOP THE TREND',style: TextStyle(color: Colors.white),)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
