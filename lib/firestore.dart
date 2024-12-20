import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  FirebaseFirestore db = FirebaseFirestore.instance;

  // Cities collection reference
  final cities = db.collection("cities");

  // Data for cities
  final data1 = <String, dynamic>{
    "name": "San Francisco",
    "state": "CA",
    "country": "USA",
    "capital": false,
    "population": 860000,
    "regions": ["west_coast", "norcal"]
  };
  final data2 = <String, dynamic>{
    "name": "Los Angeles",
    "state": "CA",
    "country": "USA",
    "capital": false,
    "population": 3900000,
    "regions": ["west_coast", "socal"],
  };
  final data3 = <String, dynamic>{
    "name": "Washington D.C.",
    "state": null,
    "country": "USA",
    "capital": true,
    "population": 680000,
    "regions": ["east_coast"]
  };
  final data4 = <String, dynamic>{
    "name": "Tokyo",
    "state": null,
    "country": "Japan",
    "capital": true,
    "population": 9000000,
    "regions": ["kanto", "honshu"]
  };
  final data5 = <String, dynamic>{
    "name": "Beijing",
    "state": null,
    "country": "China",
    "capital": true,
    "population": 21500000,
    "regions": ["jingjinji", "hebei"],
  };

  // Save data asynchronously with error handling
  try {
    await cities.doc("SF").set(data1);
    print("San Francisco data added successfully.");

    await cities.doc("LA").set(data2);
    print("Los Angeles data added successfully.");

    await cities.doc("DC").set(data3);
    print("Washington D.C. data added successfully.");

    await cities.doc("TOK").set(data4);
    print("Tokyo data added successfully.");

    await cities.doc("BJ").set(data5);
    print("Beijing data added successfully.");
  } catch (e) {
    print("Error adding city data: $e");
  }
}
