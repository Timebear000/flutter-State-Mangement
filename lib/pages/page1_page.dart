import 'package:flutter/material.dart';

class Pagin1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagin 1',
        ),
      ),
      body: InfomationUser(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagin2'),
      ),
    );
  }
}

class InfomationUser extends StatelessWidget {
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
              title: Text('Name'),
            ),
            ListTile(
              title: Text('Age'),
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
