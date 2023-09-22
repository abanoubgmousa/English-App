import 'package:flutter/material.dart';
import 'package:language_app/constant/colors/videos_page_color/videos_colors.dart';
import 'package:language_app/constant/navigations/nav_app.dart';
import 'package:language_app/constant/strings/page_video_data.dart';
import 'package:language_app/screens/details_video_screen.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Videos",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: homePageAppVideosColor,
      ),
      body: ListView.builder(
        itemCount: videosList.length,
        itemBuilder: (context, index) {
          final video = videosList[index];
          return Card(
            child: ListTile(
              leading: Image.asset(video.image),
              title: Text(video.title),
              subtitle: Text(video.subTitle),
              onTap: () {
                goTo(
                    context,
                    DetailsVideoScreen(
                      video: video,
                    ));
              },
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
          );
        },
      ),
    );
  }
}


//   late VideoPlayerController controller;
//   late Future<void> initializeVideoPlayerFuture;
//   int currentVideoIndex = 0;
//   List<String> videoPaths = [
//     "assets/videos/01000000-0a00-0242-1d93-08db896bba92_240p.mp4",
//     "assets/videos/01000000-0a00-0242-1d93-08db896bba92_240p.mp4",
//     "assets/videos/01000000-0a00-0242-1d93-08db896bba92_240p.mp4",
//     "assets/videos/01000000-0a00-0242-1d93-08db896bba92_240p.mp4"
//   ];

//   void initializeVideoPlayer(String videoPath) {
//     controller = VideoPlayerController.asset(videoPath);
//     initializeVideoPlayerFuture = controller.initialize().then((_) {
//       setState(() {});
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     initializeVideoPlayer(videoPaths[currentVideoIndex]);
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   void playVideo(int index) {
//     if (currentVideoIndex != index) {
//       currentVideoIndex = index;
//       controller.pause();
//       initializeVideoPlayer(videoPaths[currentVideoIndex]);
//     }
//   }