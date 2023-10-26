import 'package:flutter/material.dart';
import 'package:test_ceklpse/config/theme.dart';
import 'package:video_player/video_player.dart';

class VideoCourse extends StatefulWidget {
  const VideoCourse({super.key});

  @override
  State<VideoCourse> createState() => _VideoCourseState();
}

class _VideoCourseState extends State<VideoCourse> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 360,
          width: double.infinity,
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Image.asset('assets/cw.png', height: 360, width: double.infinity, fit: BoxFit.cover,),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 150),
          child: FloatingActionButton(
            backgroundColor: kBlurColor,
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 40, left: 24),
            height: 40,
            width: 40,
            child: Image.asset('assets/btn.png'),
          ),
        ),
      ],
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
