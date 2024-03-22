import 'dart:async';

import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier{

  BuildContext context;
  HomeProvider(this.context);


  /// starting all button are disable
  bool isOptionsEnable = false;
  void optionsEnable(){
    isOptionsEnable = true;
    notifyListeners();
  }


  /// for timer
  int time = 5;
  int enableQuestionIndex = 0;

  void startTimer(){
      Timer.periodic(const Duration(seconds: 1), (timer) {
        if(time == 0){
          time = 5;
          enableQuestionIndex = enableQuestionIndex+1;
          print("list index ==> ${enableQuestionIndex}");
          if(enableQuestionIndex==8){
            timer.cancel();
          }
        }else{
          time = time-1;
          print("t -> $time");
        }
        notifyListeners();
      });
  }


  /// generate random number
  generateRandomNumber(){

  }

}