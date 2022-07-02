import '../model/person_model.dart';
import '../core/mixin/id.dart';

class AdminModel extends PersonModel with ID {
  AdminModel(
    String name,
    int age,
    String gender,
    String fatherName,
    String motherName,
    String id,
  ) : super(name, age, gender, fatherName, motherName) {
    setID = id;
  }
}
