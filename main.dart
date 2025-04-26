// void main() {
//   String myname = "mohammed";
//   int myage = 34;
//   double myhighest = -179.5;

//   int myyear = 1990;

//   print(myname[0].toUpperCase());
//   print(myage);
//   print(myhighest.ceil());
//   print(myhighest.floor());
//   print(myhighest.round());
//   print(myhighest.isNegative);

//   print(myhighest.abs());

//   int myageAfter10year = myage + 10;
//   print("my age after 10 years is $myageAfter10year");

void main() {
  List<Map<String, dynamic>> orders = [
    {"id": 1, "status": "ready", "item": "Mansaf"},
    {"id": 2, "status": "ready", "item": "Kabseh"},
    {"id": 3, "status": "cancelled", "item": "Makloba"},
    {"id": 4, "status": "ready", "item": "Mosakhan"},
    {"id": 5, "status": "vip", "item": "Ouzi"},
  ];

  for (var order in orders) {
    if (order["status"] == "cancelled") {
      continue;
    }
    if (order["status"] == "vip") {
      print("vip order found, Prioritize immediately.");
      break;
    }
    switch (order["item"]) {
      case "Mansaf":
        print("Your order needs 20 minutes to be ready.");
        break;
      case "Kabseh":
        print("Your order needs 15 minutes to be ready.");
        break;
      case "Makloba":
        print("Your order needs 10 minutes to be ready.");
        break;
      case "Mosakhan":
        print("Your order needs 5 minutes to be ready.");
        break;
      case "Ouzi":
        print("Your order needs 10 minutes to be ready.");
        break;
      default:
        print("Unknown item for order item ${order["item"]}.");
    }
    if (order["id"] == 4) {
      print("it's taking too long and alert the kitchen.");
    }
  }
}
