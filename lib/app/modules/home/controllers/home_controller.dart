import 'package:anipiece/app/modules/home/views/subviews/anime_view.dart';
import 'package:anipiece/app/modules/home/views/subviews/search_view.dart';
import 'package:anipiece/app/modules/home/views/subviews/show_view.dart';
import 'package:anipiece/app/modules/home/views/subviews/watchlist_view.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var currentindex = 0.obs;

  var subviews=[
    AnimeView(),
    ShowView(),
    SearchView(),
    WatchlistView(),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
