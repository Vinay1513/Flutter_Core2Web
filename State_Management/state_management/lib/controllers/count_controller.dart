// auth_controller.dart
import 'package:get/get.dart';

class AuthController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;
  var profileImageUrl = ''.obs;

  void login(String user, String pass, String imageUrl) {
    username.value = user;
    password.value = pass;
    profileImageUrl.value = imageUrl;
  }
}

class CountController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    if (count > 0) {
      count--;
    }
  }
}
