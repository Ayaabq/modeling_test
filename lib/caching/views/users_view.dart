import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ptc/caching/views/user_item.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key, required this.users});
  final List<int> users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return UserItem(userId: users[index]);
              }));
            },
            child: Text(
              users[index].toString(),
            ),
          );
        },
      ),
    );
  }
}
