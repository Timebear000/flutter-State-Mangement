import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_singleton/services/user_service.dart';

import '../models/User.dart';

class Pagin1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagin 1',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
            ),
            onPressed: () {
              userService.removeUser();
            },
          )
        ],
      ),
      body: userService.existUser
          ? InfomationUser(userService.user)
          : Center(
              child: Text('no hay user selection'),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagin2'),
      ),
    );
  }
}

class InfomationUser extends StatelessWidget {
  final User user;
  const InfomationUser(this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'General',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Name :${user.name}'),
            ),
            ListTile(
              title: Text('Age :${user.age}'),
            ),
            Text(
              'Professions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ...user.professtion
                .map(
                  (e) => ListTile(
                    title: Text(e),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
