import 'package:firstapplication/login.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard", style: TextStyle(fontSize: 20),),
        backgroundColor: Color(0xFFB993D6),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF8CA6DB)),
              child: Container(
                alignment: Alignment.center,
                child: Text('', style: TextStyle(fontSize: 20),),
              ),
            ),
            ListTile(title: Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);},),
            ListTile(title: Text('Existing Applications')),
            ListTile(title: Text('Credit Review')),
            ListTile(title: Text('Check Eligibility')),
            ListTile(title: Text('Logout'),
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
                },),
          ],
        ),
      ),
    );
    }
}