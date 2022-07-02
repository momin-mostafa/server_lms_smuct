import '../core/mixin/department.dart';
import '../core/mixin/id.dart';
import '../model/person_model.dart';

class StudentModel extends PersonModel with ID, Department {
  StudentModel(
    String name,
    int age,
    String gender,
    String fatherName,
    String motherName,
    String id,
    String dept,
  ) : super(name, age, gender, fatherName, motherName) {
    setID = id;
    setDepartment = dept;
  }
}
