import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_app/models/Listening.dart';

class ItemListening extends StatefulWidget {
  const ItemListening({
    Key? key,
    required this.number,
  }) : super(key: key);
  final ListeningModel number;

  @override
  State<ItemListening> createState() => _ItemState();
}

class _ItemState extends State<ItemListening> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        player.play(AssetSource(widget.number.sound));
      },
      leading: Image.asset(
        widget.number.image,
        fit: BoxFit.contain,
      ),
      title: Text(widget.number.title),
      subtitle: Text(widget.number.subTitle),
      trailing: IconButton(
          onPressed: () {
            player.stop();
          },
          icon: const Icon(
            Icons.stop,
            size: 30,
          )),
    );
  }
}
