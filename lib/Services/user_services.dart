import '../Models/user.dart';
import '../Repository/repository.dart';

class UserService {
  Repository? _repository;

  UserService() {
    _repository = Repository();
  }

  createUser(User user) async {
    return await _repository?.httpPost('register', user.toJson());
  }

  login(User user) async {
    return await _repository?.httpPost('login', user.toJson());
  }
  getUserProfile(userId) async {
    return await _repository?.httpGetById('user-image', userId);
  }
}
