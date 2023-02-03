import 'package:codigo6_futures/services/my_service.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  MyService mandarina = MyService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: mandarina.getProfile(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            Map profile = snap.data;
            return Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(profile["image"]),
                ),
                ListTile(
                  title: Text(profile["name"]),
                  subtitle: Text("Nombres"),
                ),
                ListTile(
                  title: Text(profile["lastName"]),
                  subtitle: Text("Apellidos"),
                ),
                ListTile(
                  title: Text(profile["address"]),
                  subtitle: Text("Dirección"),
                ),
              ],
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
