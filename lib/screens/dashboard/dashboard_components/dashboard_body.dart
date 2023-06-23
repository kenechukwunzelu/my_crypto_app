import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_crypto_app/screens/dashboard/dashboard_components/tansactions.dart';
import 'package:my_crypto_app/screens/dashboard/dashboard_components/wallets.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {

  int selectedTabIndex = 0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: TabBar(
          padding: const EdgeInsets.only(right: 120, top: 10, bottom: 10),
          indicatorColor: Colors.transparent,
          onTap: (value) {
            setState(() {
              selectedTabIndex = value; // Update the selected tab index
            });
          },
          tabs: <Widget>[
            Tab(
              child: Text(
                'Wallets',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: selectedTabIndex == 0 ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
            Tab(
              child: Text(
                'Transactions',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: selectedTabIndex == 1 ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            Wallets(),
            Transcations(),
          ],
        ),
      ),
    );
  }
}