import 'package:flutter/material.dart';

import 'about_view.dart';
import 'dashboard.dart';
import 'home_view.dart';
import 'profile_view.dart';

class NavigatorBarView extends StatefulWidget {
  const NavigatorBarView({super.key});

  @override
  State<NavigatorBarView> createState() => _NavigatorBarViewState();
}

class _NavigatorBarViewState extends State<NavigatorBarView> {
  int _selectedIndex = 0;

  List<Widget> lstBottomScreen = [
    const HomeView(),
    const ProfileView(),
    const AboutView(),
    const DashboardView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstBottomScreen[_selectedIndex],
      //put a qr scanner button in the middle

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, qrViewRoute);
        },
        child: const Icon(Icons.qr_code_scanner),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'About us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.text_decrease),
          //   label: 'Test',
          // )
        ],
        backgroundColor: const Color.fromARGB(255, 224, 153, 197),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
