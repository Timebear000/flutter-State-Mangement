import 'package:flutter/material.dart';
import 'package:state_singleton/services/user_service.dart';

import '../models/User.dart';

class Pagin1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagin 1',
        ),
      ),
      body: StreamBuilder(
        stream: userService.userStream,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          return snapshot.hasData
              ? InfomationUser(snapshot.data)
              : Center(
                  child: Text('no hey information user'),
                );
        },
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
              title: Text('Name: ${user.name}'),
            ),
            ListTile(
              title: Text('Age: ${user.age}'),
            ),
            Text(
              'Professions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Profesion 1'),
            ),
            ListTile(
              title: Text('Profesion 1'),
            ),
            ListTile(
              title: Text('Profesion 1'),
            ),
          ],
        ));
  }
}
