

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => Center(
              child: controller.subviews[controller.currentindex.value],
            ),
            ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            selectedItemColor: Get.theme.colorScheme.primary,
            unselectedItemColor: Get.theme.colorScheme.secondary,
            backgroundColor: Get.theme.colorScheme.outlineVariant,
            showUnselectedLabels: true,
            currentIndex: controller.currentindex.value,
            onTap: (value) {
              controller.currentindex.value = value;
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_outlined),
                label: "Anime",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.watch_later_outlined),
                label: "Watchlist",
              ),
            ],
          ),
        ),
      );
  }
}
