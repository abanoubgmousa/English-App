import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({
    Key? key,
    this.colors,
    this.image,
    this.onTap,
  }) : super(key: key);
  final Color? colors;
  final String? image;
  final void Function()? onTap;
  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        elevation: 7,
        margin: const EdgeInsets.all(7),
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.image!), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
