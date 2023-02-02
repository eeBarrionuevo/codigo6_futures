import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Mantequilla el último de los méxicanos";

  @override
  void initState() {
    super.initState();
    getFullName().then((value) {
      name = value;
      setState(() {});
    });
  }

  Future<String> getFullName() async {
    return Future.delayed(Duration(seconds: 3), () {
      return "Juan Carlos Montes";
    });
  }

  @override
  Widget build(BuildContext context) {
    // getFullName().then((value) {
    //   print("Estoy dentro del future");
    //   name = value;
    // });

    return Scaffold(
      body: Center(
        child: Text(
          name,
        ),
      ),
    );
  }
}
