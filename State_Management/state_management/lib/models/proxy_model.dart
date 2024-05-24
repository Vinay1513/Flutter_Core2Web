class Login {
  String userName;
  String password;
  Login({required this.userName, required this.password});
}

class Employee {
  final int empId;
  final String empName;
  final String userName;
  final String password;

  const Employee({
    required this.empId,
    required this.empName,
    required this.userName,
    required this.password,
  });
}
