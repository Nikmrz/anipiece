import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AnimeView extends GetView {
  const AnimeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnimeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
