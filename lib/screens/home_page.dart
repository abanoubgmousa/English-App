import 'package:flutter/material.dart';
import 'package:language_app/constant/navigations/nav_app.dart';
import 'package:language_app/screens/listening_page.dart';
import 'package:language_app/screens/videos_page.dart';
import 'package:language_app/widgets/widgets_home_screen/container_widget.dart';

import '../constant/colors/listening_page_colors/listening_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: homePageListingColor,
        title: const Text("English learning"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          centerText("Listening"),
          ContainerWidget(
              image: "assets/images/home_page_audio.jpg",
              onTap: () {
                goTo(context, const ListeningPage());
              }),
          const SizedBox(height: 10),
          centerText("watching"),
          ContainerWidget(
              image: "assets/images/home_page_video.png",
              onTap: () {
                goTo(context, const VideosPage());
              }),
        ],
      ),
    );
  }

  Widget centerText(String text) {
    return Center(
        child: Text(
      text,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ));
  }
}
