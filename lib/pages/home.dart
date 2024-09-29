import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/pages/check_company.dart';
import 'package:hackyeah_2024_mobile/pages/result_screen.dart';
import 'package:hackyeah_2024_mobile/widges/side_bar/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nip = "";

  void updateNip(String newNip) {
    setState(() {
      nip = newNip;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Straż Wiarygodności'),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300, // Shadow color
                    spreadRadius: 1,
                    blurRadius: 1, // Shadow offset
                  ),
                ]),
              )),
        ),
        body: Row(
          children: [
            const SideBar(),
            Expanded(
              child: nip == ""
                  ? CheckCompany(onNipEntered: updateNip) // Pass the callback
                  : ResultScreen(nip: nip),
            ),
          ],
        ));
  }
}
