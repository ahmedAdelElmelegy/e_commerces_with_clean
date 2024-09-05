import 'package:fashions/features/Auth/domain/use_case/login_use_case.dart';
import 'package:fashions/features/auth/domain/entities/login_entity.dart';
import 'package:fashions/features/home/presentation/bindings/home_bindings.dart';
import 'package:fashions/features/main_screen/presentation/view/main_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final LoginUseCase loginUseCase;

  LoginController({required this.loginUseCase});

  var isLoading = false.obs;

  Future<void> login({required String email, required String password}) async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Email and password cannot be empty');
      return;
    }
    isLoading(true);
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      final loginEntity = LoginEntity(email: email, password: password);
      var result = await loginUseCase.call(loginEntity);
      result.fold((failure) => Get.snackbar("Error", failure.message),
          (userData) {
        sharedPreferences.setString('token', userData.token);
        Get.offAll(() => MainView(), binding: HomeBindings());
      });
    } catch (e) {
      Get.snackbar('Error', 'An unexpected error occurred');
    } finally {
      isLoading(false);
    }
  }

  var isHint = true.obs;
  void isObsecure() {
    isHint.value = !isHint.value;
  }
}
