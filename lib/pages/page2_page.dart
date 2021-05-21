import 'package:flutter/material.dart';
import 'package:state_singleton/services/user_service.dart';

import '../models/User.dart';

class Pagin2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            return snapshot.hasData
                ? Text(snapshot.data.name)
                : Text('pagin 2');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                'Set User',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                final newuser = new User(name: '김요환', age: 35);
                userService.loadUser(newuser);
              },
            ),
            MaterialButton(
              child: Text(
                'Chage Age',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                userService.chageAge(40);
              },
            ),
            MaterialButton(
              child: Text(
                'Anadding Profession',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
