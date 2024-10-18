import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../lesson-controller/controller-audio.dart';


class TaskContainer extends StatelessWidget {
  // final AudioController audioController;
  //
  // TaskContainer({required this.audioController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Today's Task is",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 8.0,
                        child: LinearProgressIndicator(
                          value: 0.4,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.play_circle,size: 50,color: Colors.white,)),
                          // Obx(() => IconButton(
                          //   icon: Icon(
                          //     audioController.isPlaying.value
                          //         ? Icons.pause_circle_filled
                          //         : Icons.play_circle_filled,
                          //     color: Colors.white,
                          //     size: 50,
                          //   ),
                          //   onPressed: audioController.toggleAudio,
                          // )),
                          Expanded(
                            child: Text(
                              "You can listen to videos of each lesson",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -18,
            left: 280,
            child: Image.asset(
              "assets/Images/img_5.png",
              width: 120,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
