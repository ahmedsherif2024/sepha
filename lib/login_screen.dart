import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/animation_ll2bpeww.json'),
              ),

            ),
            Text(
              'Ahmed Sherif',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ahmed@gmail.com',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                'Home'
              ),
              trailing: Icon(
                Icons.arrow_forward_ios
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                  'Home'
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                  'Home'
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                  'Home'
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
            ),
          ],


        ),

      ),

    );

  }
}