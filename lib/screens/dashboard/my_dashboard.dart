import 'package:flutter/material.dart';
import 'package:my_crypto_app/screens/dashboard/dashboard_components/dashboard_appbar.dart';
import 'package:my_crypto_app/screens/dashboard/dashboard_components/dashboard_body.dart';
import 'package:my_crypto_app/screens/dashboard/dashboard_components/dashboard_bottom_navbar.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: const [
          Expanded(flex: 1, child: DashboardAppbar()),
          Expanded(
            flex: 2,
            child: DashboardBody(),
          ),
        ],
      ),
      bottomNavigationBar: const DashboardBottomNavBar(),
    );
  }
}


