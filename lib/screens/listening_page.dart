import 'package:flutter/material.dart';
import 'package:language_app/constant/colors/listening_page_colors/listening_colors.dart';
import 'package:language_app/constant/strings/page_listening_data.dart';
import 'package:language_app/widgets/widgets_listens_screen/item_listening.dart';

class ListeningPage extends StatefulWidget {
  const ListeningPage({super.key});

  @override
  State<ListeningPage> createState() => _ListeningPageState();
}

class _ListeningPageState extends State<ListeningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: homePageAppBarColor,
        title: const Text("Listening"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listensList.length,
        itemBuilder: (context, index) {
          return ItemListening(number: listensList[index]);
        },
      ),
    );
  }
}
