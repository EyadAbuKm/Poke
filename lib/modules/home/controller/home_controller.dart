
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final nameController = TextEditingController();



  void textChanged(String? value){
    nameController.text = value??"";
    update();
  }


}
