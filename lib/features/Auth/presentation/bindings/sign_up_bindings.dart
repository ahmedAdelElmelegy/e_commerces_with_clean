import 'package:fashions/core/utils/set_up_server_locator.dart';
import 'package:fashions/features/Auth/data/repo_imp/user_repo_imp.dart';
import 'package:fashions/features/Auth/domain/use_case/sign_up_use_case.dart';
import 'package:fashions/features/Auth/presentation/manager/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpController(
        signUpUseCase: SignUpUseCase(userRepo: getIt.get<UserRepoImpl>())));
  }
}
