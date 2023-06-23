import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_crypto_app/screens/dashboard/dashboard_components/my_dropdown.dart';
import 'package:my_crypto_app/screens/dashboard/dashboard_components/sell_buy_swap.dart';

class DashboardAppbar extends StatefulWidget {
  const DashboardAppbar({super.key});

  @override
  State<DashboardAppbar> createState() => _DashboardAppbarState();
}

class _DashboardAppbarState extends State<DashboardAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 74),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('lib/images/auth/avatar.png'),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Combined Total',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.visibility,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ 0.00',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                const MyDropdown(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SellBuySwap(
                  mySBSText: 'Sell',
                  mySBSIcon: Icon(
                    Icons.indeterminate_check_box,
                    color: Colors.blue,
                  ),
                ),
                SellBuySwap(
                  mySBSText: 'Buy',
                  mySBSIcon: Icon(
                    Icons.add_box,
                    color: Colors.blue,
                  ),
                ),
                SellBuySwap(
                  mySBSText: 'Swap',
                  mySBSIcon: Icon(
                    Icons.swap_vertical_circle_rounded,
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
