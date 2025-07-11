import 'dart:async';
import 'package:flutter/material.dart';

class ColonWidget extends StatefulWidget {
  final Widget? colon;

  const ColonWidget({Key? key, this.colon}) : super(key: key);

  @override
  State<ColonWidget> createState() => _ColonWidgetState();
}

class _ColonWidgetState extends State<ColonWidget> {
  late Timer timer;
  bool visible = true;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      setState(() {
        visible = !visible;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: widget.colon ??
          Text(
            ":",
            style: Theme.of(context).textTheme.bodySmall ?? const TextStyle(fontSize: 14),
          ),
    );
  }
}
