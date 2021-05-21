import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_singleton/services/user_service.dart';

import '../models/User.dart';

class Pagin2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: userService.existUser
            ? Text('Name: ${userService.user.name}')
            : Text('paging 2'),
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
              onPressed: () => userService.user = User(
                name: "김요환",
                age: 35,
                professtion: ['Fullstack Developer', 'IOS AppDeveloper'],
              ),
            ),
            MaterialButton(
              child: Text(
                'Chage Age',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () => userService.changeAge(32),
            ),
            MaterialButton(
              child: Text(
                'Anadding Profession',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: ()=> userService.addPerfesion(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagin1'),
      ),
    );
  }
}
