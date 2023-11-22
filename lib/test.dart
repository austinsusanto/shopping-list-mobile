import 'dart:convert';

Mobil mobilFromJson(String str) => Mobil.fromJson(json.decode(str));
String mobilToJson(Mobil data) => json.encode(data.toJson());

List<Mobil> listMobilFromJson(String str) => List<Mobil>.from(json.decode(str).map((mobil) => Mobil.fromJson(mobil)));
String listMobilToJson(List<Mobil> data) => json.encode(List<dynamic>.from(data.map((mobil) => mobil.toJson())));

class Mobil {
    Mobil({
        required this.id,
        required this.brand,
        required this.model,
        required this.color
    });

    factory Mobil.fromJson(Map<String, dynamic> json) => Mobil(
        id: json["id"],
        brand: json["brand"],
        model: json["model"],
        color: json["color"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand,
        "model": model,
        "color": color,
    };

    int id;
    String brand;
    String model;
    String color;
}