class Analysis {
  Analysis({
    required this.generalRate,
    required this.profitabilityRate,
    required this.credibilityRate,
    required this.description,
    required this.mainPoints,
  });

  int generalRate;
  int profitabilityRate;
  int credibilityRate;
  String description;
  List<String> mainPoints;

  factory Analysis.fromJson(Map<String, dynamic> json) => Analysis(
        generalRate: json["generalRate"],
        profitabilityRate: json["profitabilityRate"],
        credibilityRate: json["credibilityRate"],
        description: json["description"],
        mainPoints: List.from(json["mainPoints"]),
      );
}
