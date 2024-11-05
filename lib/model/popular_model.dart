import 'dart:convert';

class PopularModel {
  List<Meal> meals;

  PopularModel({
    required this.meals,
  });

  PopularModel copyWith({
    List<Meal>? meals,
  }) =>
      PopularModel(
        meals: meals ?? this.meals,
      );

  factory PopularModel.fromRawJson(String str) => PopularModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PopularModel.fromJson(Map<String, dynamic> json) => PopularModel(
    meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
  };
}

class Meal {
  String strMeal;
  String strMealThumb;
  String idMeal;

  Meal({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });

  Meal copyWith({
    String? strMeal,
    String? strMealThumb,
    String? idMeal,
  }) =>
      Meal(
        strMeal: strMeal ?? this.strMeal,
        strMealThumb: strMealThumb ?? this.strMealThumb,
        idMeal: idMeal ?? this.idMeal,
      );

  factory Meal.fromRawJson(String str) => Meal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
    strMeal: json["strMeal"],
    strMealThumb: json["strMealThumb"],
    idMeal: json["idMeal"],
  );

  Map<String, dynamic> toJson() => {
    "strMeal": strMeal,
    "strMealThumb": strMealThumb,
    "idMeal": idMeal,
  };
}
