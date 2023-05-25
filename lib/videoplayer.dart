


import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {

  const VideoPlayerWidget({Key? key}) :super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();

  }

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {

 late final VideoPlayerController _controller;

 @override
 void initState() {
   super.initState();
   _controller = VideoPlayerController.network(
       'https://www.youtube.com/watch?v=obPBo5CXExk');
   _controller.initialize().then((_) {
     setState(() {
       _controller.play();
       _controller.setLooping(true);
     });
   });
 }
 @override
 void dispose() {
   _controller.dispose();
   super.dispose();
 }


  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Container(alignment: Alignment.topCenter, child: AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    ),
    )
        : const SizedBox(
      height: 300,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}



