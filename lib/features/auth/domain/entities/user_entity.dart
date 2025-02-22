class UserEntity {
  final String email;
  final String name;
  final String userId;

  UserEntity( {required this.userId,required this.email, required this.name});

  toMap() {
    return {
      'email': email,
      'name': name,
      'userId': userId,
    };
  }
}