import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Nizam Uddin Nayeem'),
            accountEmail: Text('nunayeem@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/nayeem.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error); // Placeholder in case of error
                  },
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/736x/03/46/cd/0346cd3ee86c5e194191cf1eaadb74b1.jpg",
                ),
                fit: BoxFit.cover,
                onError: (error, stackTrace) {
                  print("Network image load error: $error"); // Log network image load errors
                },
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "Notifiation",
                toastLength: Toast.LENGTH_SHORT
              );
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () {
              print("Hello Notification Tap");
            },
            trailing: ClipOval(
              child: Container(
                width: 30,
                height: 30,
                color: Colors.red,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.zero),
      ),
    );
  }
}
