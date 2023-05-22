


import 'package:flutter/material.dart';

class VideoPlayer extends StatefulWidget {

  const VideoPlayer(VideoPlayerController controller, {super.key});

//const VideoPlayer({
//required Key key,
//}) //:super (key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayer();

  }

class _VideoPlayer extends State<VideoPlayer> {

 late final VideoPlayerController controller;

 @override
 void initState(){
   super.initState();
 }
  @override
  Widget build(BuildContext context) =>
      controller.value.initialized
      ? Container(alignment: Alignment.topCenter,child: buildVideo())
      : const SizedBox(
        height: 300,
        child: Center(child: CircularProgressIndicator()),
      );
 Widget buildVideo()=> buildVideoPlayer();
 Widget buildVideoPlayer()=> VideoPlayer(controller);

  }

class VideoPlayerController {
  //bool videoPlayer =false;
  get value => null;
}

