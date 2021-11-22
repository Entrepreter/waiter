import 'package:flutter/material.dart';

class ResponseBody extends StatelessWidget {
  final dynamic body;
  const ResponseBody({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Colors.white,
      ),
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Text(
          body?.toString() ?? "Waiting for response...",
          style: const TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}
