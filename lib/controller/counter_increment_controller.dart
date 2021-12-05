import 'package:get/state_manager.dart';

class CounterIncrementController extends GetxController {
  var Secondcounter = 0.obs;

  increaseCounterValue(dynamic event) {
    if (event == EventHandler.Increment) {
      Secondcounter.value++;
    } else if (event == EventHandler.Decrement) {
      Secondcounter.value--;
    } else if (event == EventHandler.reset) {
      Secondcounter.value = 0;
    }
  }
}

enum EventHandler { Increment, Decrement, reset }
