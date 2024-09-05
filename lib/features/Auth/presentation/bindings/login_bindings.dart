import 'package:fashions/core/utils/set_up_server_locator.dart';
import 'package:fashions/features/Auth/data/repo_imp/user_repo_imp.dart';
import 'package:fashions/features/Auth/domain/use_case/login_use_case.dart';
import 'package:fashions/features/Auth/presentation/manager/login_controller.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(
      LoginController(
        loginUseCase: LoginUseCase(userRepo: getIt.get<UserRepoImpl>()),
      ),
    );
  }
}
