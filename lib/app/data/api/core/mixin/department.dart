mixin Department {
  String _dept = '';

  set setDepartment(String dept) {
    _dept = dept;
  }

  get getDepartment {
    return _dept;
  }
}
