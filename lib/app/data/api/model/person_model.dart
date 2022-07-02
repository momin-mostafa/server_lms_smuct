abstract class PersonModel {
  String _name;
  int _age;
  String _gender;
  String _fatherName;
  String _motherName;

  PersonModel(
    this._name,
    this._age,
    this._gender,
    this._fatherName,
    this._motherName,
  );

  set setName(String name) {
    _name = name;
  }

  set setAge(int age) {
    _age = age;
  }

  set setGender(String gender) {
    _gender = gender;
  }

  set setFatherName(String name) {
    _fatherName = name;
  }

  set setMotherName(String name) {
    _motherName = name;
  }

  get getName {
    return _name;
  }

  get getAge {
    return _age;
  }

  get getGender {
    return _gender;
  }

  get getFatherName {
    return _fatherName;
  }

  get getMotherName {
    return _motherName;
  }
}
