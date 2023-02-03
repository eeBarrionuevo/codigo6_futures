class MyService {
  Future<Map<String, dynamic>> getProfile() async {
    return Future.delayed(Duration(seconds: 3), () {
      return {
        "id": 10,
        "name": "Juan",
        "lastName": "Lopez Arias",
        "phone": "221222333",
        "address": "Av. Lima 123",
        "image":
            "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      };
    });
  }
}
