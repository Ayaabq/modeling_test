import 'package:flutter/material.dart';

import '../data/users.dart';

class UserItem extends StatefulWidget {
  const UserItem({super.key, required this.userId});
  final int userId;

  @override
  State<UserItem> createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  late Map<String, dynamic> user;
  @override
  void initState() {
    user = Cache().getUser(widget.userId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ListTile(
                leading: Text("${user['id']} "),
                  title: Text("${user["first_name"]} ${user['last_name']}"),
                    trailing:Text("${user["about"]} "),
              ),
        ));
  }
}
