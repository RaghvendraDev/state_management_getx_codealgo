import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_example/controller/counter_increment_controller.dart';
import 'package:state_management_example/view/second.dart';

class HomePage extends StatelessWidget {
  CounterIncrementController counterIncrementController =
      Get.put(CounterIncrementController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("-----render widget------");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<CounterIncrementController>(
            //   //init: MyController(),
            //   //initState: (_) {},
            //   builder: (controller) {
            //     return Text(
            //       "Counter Value ${controller.counter}",
            //       style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     );
            //   },
            // )

            // GetX<CounterIncrementController>(
            //   // init: MyController(),
            //   // initState: (_) {},
            //   builder: (controller) {
            //     return Text(
            //       "Counter Value ${controller.Secondcounter}",
            //       style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     );
            //   },
            // ),

            Obx(() => Text(
                  "Counter Value ${counterIncrementController.Secondcounter.value}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),

            // ElevatedButton(
            //   onPressed: () {
            //     // Navigator.push(context,
            //     //     MaterialPageRoute(builder: (context) => SecondPage()));

            //     Get.to(SecondPage());
            //   },
            //   child: Text("Second"),
            // ),

            SizedBox(
              height: 10,
            ),

            FloatingActionButton(
              onPressed: () {
                counterIncrementController
                    .increaseCounterValue(EventHandler.Increment);
                // counter++;
                //print("Clicked");
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                counterIncrementController
                    .increaseCounterValue(EventHandler.Decrement);
                // counter++;
                //print("Clicked");
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                counterIncrementController
                    .increaseCounterValue(EventHandler.reset);
                // counter++;
                //print("Clicked");
              },
              child: Icon(Icons.exposure_zero),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     counterIncrementController.increaseCounterValue();
      //     // counter++;
      //     //print("Clicked");
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
