import 'repo.dart';
import 'user.dart';

class UserService {
  late Repository _repository;

  // constructor
  UserService() {
    _repository = Repository();   // initlization

  }

  saveData(User user) {
    return _repository.insertData("mytable", user.userMap());
  }
  
  // retrive all data from table

  readAllData(){
    return _repository.readData("mytable");
  }

  // update table
  updateData(User user){
    return _repository.updateData("mytable", user.userMap());
  }

  // deleteData

  deleteData(userid){
    return _repository.deleteData("mytable", userid);
  }
}