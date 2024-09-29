import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/theme/theme.dart';

class CheckCompany extends StatefulWidget {
  const CheckCompany({super.key, required this.onNipEntered});

  final Function(String) onNipEntered;

  @override
  State<CheckCompany> createState() => _CheckCompany();
}

class _CheckCompany extends State<CheckCompany> {
  final TextEditingController _nipController = TextEditingController();

  @override
  void dispose() {
    _nipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: AppTheme.spacing.screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Zweryfikuj kontrahenta",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text("Podaj numer podatkowy kontrahenta, by rozpoczać", style: TextStyle(fontSize: 16),),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: 340,
                  child: TextField(
                    controller: _nipController,
                    decoration: InputDecoration(
                        hintText: "NIP / REGON",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0))),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: 340,
                  height: 48,
                  child: FilledButton(
                    onPressed: () {
                      widget.onNipEntered(_nipController.text);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: AppTheme.colors.primary.shade500,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: const Text("Rozpocznij"),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Wiarygodność")
                      ],
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Rzetelność")
                      ],
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Rentowność")
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
