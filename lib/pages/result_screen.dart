import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/dio.dart';
import 'package:hackyeah_2024_mobile/theme/theme.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({super.key, required this.nip});

  final String nip;

  @override
  State<ResultScreen> createState() => _ResultScreen();
}

class _ResultScreen extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getCompany(nip: widget.nip),
        builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return buildLoading();
          }
          return buildResultScreen(snapshot);
        });
  }

  Widget buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget buildResultScreen(AsyncSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic>? companyData = snapshot.data;

    if (companyData == null) {
      return const Text('Łatafak XD'); // left on purpose ;)
    }

    bool isWiarygodna = companyData['analysis']['generalRate'] > 50; // just like in PKP Intercity code-base ;)))
    // unfortunately, no chance to put isPies here :(

    return ListView(
      padding: AppTheme.spacing.screenPadding,
      children: [
        const Text(
          "Raport kontrahenta",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text("Sprawdziliśmy dla Ciebie dane poniższej firmy.", style: TextStyle(fontSize: 16),),
        // Text(companyData.company.name),
        const SizedBox(
          height: 32,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300)),
          padding: EdgeInsets.all(32),
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
                        Text(companyData["company"]["name"]),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Numer NIP",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(companyData["company"]["nip"]),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Kody PKD",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("46.69.Z, 28.99.Z, 11.Z, 77.39.Z"),
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
                        Text("Spółka akcyjna"),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Kapitał zakładowy",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("10.000.000 zł"),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Opis działalności",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Sprzedaż sprzętu geologicznego i urządzeń do składowania metali niezależnych"),
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
                    padding: EdgeInsets.all(32),
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
                                    color: isWiarygodna ? Colors.green.shade700.withOpacity(0.1) : Colors.red.shade700.withOpacity(0.1),
                                    spreadRadius: 12,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.check_circle,
                                color: isWiarygodna ? Colors.green : Colors.red,
                                size: 32,
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  isWiarygodna ? "Firma jest wiarygodna!" : "Firma nie jest wiarygodna.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                Text("Wskaźnik dla tej firmy wynosi " +
                                    companyData["analysis"]["generalRate"]
                                        .toString() +
                                    "%.", style: TextStyle(fontSize: 16),),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(companyData['analysis']['description'], style: TextStyle(fontSize: 16)),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(Icons.auto_awesome_outlined, size: 16, color: Colors.grey.shade500),
                            SizedBox(
                              width: 8,
                            ),
                            Text("Wspierane przez AI", style: TextStyle(color: Colors.grey.shade500)),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
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
                    padding: EdgeInsets.all(32),
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
                            "Dane określamy na podstawie opinii wystawionych przez innych przedsiębiorców", style: TextStyle(fontSize: 16),),
                        const SizedBox(
                          height: 16,
                        ),
                        for (var i = 0; i < companyData['analysis']['mainPoints'].length; i++)
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppTheme.colors.primary.shade300.withOpacity(0.3)),
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  (i+1).toString(),
                                  style: TextStyle(
                                      color: AppTheme.colors.primary.shade500,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Text(companyData['analysis']['mainPoints'][i], style: TextStyle(fontSize: 16),),
                              ),
                            ],
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
    );
  }
}
