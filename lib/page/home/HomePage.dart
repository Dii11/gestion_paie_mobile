
import 'package:first_project/composant/Entete.dart';
import 'package:first_project/page/employes/ListeEmploye.dart';
import 'package:flutter/material.dart';

class SimpleBottomNavigation extends StatefulWidget {
  const SimpleBottomNavigation({Key? key}) : super(key: key);

  @override
  State<SimpleBottomNavigation> createState() => _SimpleBottomNavigationState();
}

class _SimpleBottomNavigationState extends State<SimpleBottomNavigation> {
  int _selectedIndex = 0;
  final BottomNavigationBarType _bottomNavType = BottomNavigationBarType.shifting;

  final List<Widget> _pageWidgets = [
    DashboardWidget(),
    EmployeesWidget(),
    PaymentsWidget(),
    ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IndexedStack(
                index: _selectedIndex,
                children: _pageWidgets,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff6200ee),
        unselectedItemColor: const Color(0xff757575),
        type: _bottomNavType,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
      ),
    );
  }
}

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.bubble_chart_outlined),
    activeIcon: Icon(Icons.bubble_chart_rounded),
    label: 'Tableau de bord',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.groups_outlined),
    activeIcon: Icon(Icons.groups_rounded),
    label: 'Employées',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.payments_outlined),
    activeIcon: Icon(Icons.payments_rounded),
    label: 'Paiements',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person_outline_rounded),
    activeIcon: Icon(Icons.person_rounded),
    label: 'Profile',
  ),
];

class DashboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dashboard Widget'),
    );
  }
}

class EmployeesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ListeEmploye(),
    );
  }
}

class PaymentsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BackgroundWidget(),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Widget'),
    );
  }
}
