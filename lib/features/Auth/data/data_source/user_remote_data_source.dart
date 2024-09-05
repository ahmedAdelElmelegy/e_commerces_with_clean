import 'package:fashions/core/utils/api_services.dart';
import 'package:fashions/features/auth/domain/entities/login_entity.dart';
import 'package:fashions/features/auth/domain/entities/sign_up_entity.dart';
import 'package:fashions/features/auth/domain/entities/user_data.dart';

abstract class UserRemoteDataSource {
  Future<UserData> login(LoginEntity loginEntity);
  Future<UserData> signUp(SignUpEntity signUpEntity);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final ApiServices apiServices;

  UserRemoteDataSourceImpl({required this.apiServices});

  @override
  Future<UserData> login(LoginEntity loginEntity) async {
    final response = await apiServices.post(
      endPoint: 'login',
      body: loginEntity.toJson(),
    );
    if (response['data'] == null) {
      throw Exception('No data returned');
    }
    return UserData.fromJson(response['data']);
  }

  @override
  Future<UserData> signUp(SignUpEntity signUpEntity) async {
    final response = await apiServices.post(
      endPoint: 'register',
      body: signUpEntity.toJson(),
    );
    if (response['status'] == false) {
      throw Exception('${response['message']}');
    }
    return UserData.fromJson(response['data']);
  }
}
