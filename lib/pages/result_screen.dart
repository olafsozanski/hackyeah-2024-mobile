import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/theme/theme.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.nip});
  final String nip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.spacing.screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Raport kontrahenta",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text("Sprawdziliśmy dla Ciebie dane poniższej firmy."),
          const SizedBox(
            height: 32,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300)),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Dane podstawowe',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Nazwa firmy",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("nazwa"),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Numer NIP",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("321321312"),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Kody PKD",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("543jkhjkdhw423"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Typ firmy",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("typ"),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Kapitał zakładowy",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("10000 zł"),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Opis działalności",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("opis"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red.withOpacity(0.1),
                                      spreadRadius: 12,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.red,
                                  size: 32,
                                ),
                              ),
                              const SizedBox(
                                width: 32,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nagłowek",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  Text("komentarz")
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text("Opis firmy"),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Icon(Icons.auto_awesome_outlined),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Wspierane przez AI")
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [Text("Grafy")],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kluczowe informacje",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                              "Dane określamy na podstawie opinii wystawionych przez innych przedsiębiorców"),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppTheme.colors.primary.shade300),
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: AppTheme.colors.primary.shade500,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("opis")
                            ],
                          ),
                          Row(
                            children: [Text("cyfra"), Text("opis")],
                          ),
                          Row(
                            children: [Text("cyfra"), Text("opis")],
                          ),
                          Row(
                            children: [Text("cyfra"), Text("opis")],
                          ),
                          Row(
                            children: [Text("cyfra"), Text("opis")],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
