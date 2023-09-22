import 'package:flutter/material.dart';
import 'package:language_app/models/video_model.dart';
import 'package:video_player/video_player.dart';

class DetailsVideoScreen extends StatefulWidget {
  final VideoModel video;
  const DetailsVideoScreen({
    Key? key,
    required this.video,
  }) : super(key: key);

  @override
  State<DetailsVideoScreen> createState() => _DetailsVideoScreenState();
}

class _DetailsVideoScreenState extends State<DetailsVideoScreen> {
  VideoPlayerController? controller;
  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.video.video)
      ..initialize().then((value) {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.video.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
              child: controller!.value.isInitialized
                  ? VideoPlayer(controller!)
                  : Container(),
            ),
          ),
          VideoProgressIndicator(controller!, allowScrubbing: true),
          Row(
            children: [
              MaterialButton(
                onPressed: () async {
                  Duration? duration = await controller!.position;
                  Duration playBack = duration! - const Duration(seconds: 10);
                  controller!.seekTo(Duration(seconds: playBack.inSeconds));
                },
                child: const Icon(Icons.fast_rewind),
              ),
              MaterialButton(
                onPressed: () {
                  controller!.play();
                },
                child: const Icon(Icons.play_arrow),
              ),
              MaterialButton(
                onPressed: () {
                  controller!.pause();
                },
                child: const Icon(Icons.pause),
              ),
              MaterialButton(
                onPressed: () async {
                  Duration? duration = await controller!.position;
                  Duration playBack = duration! + const Duration(seconds: 10);
                  controller!.seekTo(playBack);
                },
                child: const Icon(Icons.fast_forward),
              ),
            ],
          )
        ],
      ),
    );
  }
}
