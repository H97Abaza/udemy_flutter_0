import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/users/user_model.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Hussein Abaza',
      phone: '.+963945589529',
    ),
    UserModel(
      id: 2,
      name: 'Ahmad Adiga',
      phone: '.+963949146529',
    ),
    UserModel(
      id: 3,
      name: 'Khaled Ahmad',
      phone: '.+963979159529',
    ),
    UserModel(
      id: 4,
      name: 'Hussam Ali',
      phone: '.+963947418529',
    ),
    UserModel(
      id: 5,
      name: 'Hussein Abaza',
      phone: '.+963945589529',
    ),
    UserModel(
      id: 6,
      name: 'Ahmad Adiga',
      phone: '.+963949146529',
    ),
    UserModel(
      id: 7,
      name: 'Khaled Ahmad',
      phone: '.+963979159529',
    ),
    UserModel(
      id: 8,
      name: 'Hussam Ali',
      phone: '.+963947418529',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (contest, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[300],
                ),
              ),
          itemCount: users.length),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    user.phone,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
