import 'package:fashions/core/utils/show_alert.dart';
import 'package:fashions/features/Auth/domain/use_case/sign_up_use_case.dart';
import 'package:fashions/features/auth/domain/entities/sign_up_entity.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final SignUpUseCase signUpUseCase;

  var isLoading = false.obs;

  SignUpController({required this.signUpUseCase});

  Future<void> signUp(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    isLoading(true);
    try {
      SignUpEntity signUpEntity = SignUpEntity(
          email: email, password: password, phone: phone, username: name);
      var result = await signUpUseCase.call(signUpEntity);

      result.fold(
        (failure) => showCenteredDialog("Error", failure.message),
        (userData) => Get.snackbar('Sucess', 'Sign Up Sucessful'),
      );
    } catch (e) {
      showCenteredDialog("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }
}
