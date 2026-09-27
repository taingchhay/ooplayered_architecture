// enum Role { customer, admin }

class User {
  final String id;
  final String name;
  final String phoneNum;
  // final Role role;

  User({
    required this.id,
    required this.name,
    required this.phoneNum,
    // required this.role,
  });
}
//   User.admin({
//     required this.id, 
//     required this.name, 
//     required this.phoneNum
//     })
//     : role = Role.admin;

//   User.customer({
//     required this.id, 
//     required this.name, 
//     required this.phoneNum
//     }): role = Role.customer;
// }
