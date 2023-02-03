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
    // getFullName().then((value) {
    //   name = value;
    //   setState(() {});
    // });
    // getData();
  }

  getData() async {
    name = await getFullName();
    setState(() {});
  }

  Future<String> getFullName() async {
    return Future.delayed(Duration(seconds: 3), () {
      return "Juan Carlos Montes";
    });
  }

  Future<List> getProducts() async {
    return Future.delayed(Duration(seconds: 5), () {
      return ["Camisa", "Zapatos", "Corbata", "Traje"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // getFullName().then((value) {
    //   print("Estoy dentro del future");
    //   name = value;
    // });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "La tiendita de Ramón",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: getProducts(),
          builder: (BuildContext context, AsyncSnapshot snap) {
            print(snap);
            if (snap.hasData) {
              List products = snap.data;
              return ListView.builder(
                // shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(products[index]);
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
