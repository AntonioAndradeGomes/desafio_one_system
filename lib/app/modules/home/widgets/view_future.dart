import 'package:flutter/material.dart';

class ViewFuture extends StatelessWidget {
  final String text;
  const ViewFuture({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
