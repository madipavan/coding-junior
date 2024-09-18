import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:codingjunior/presantation/homepage/screens/home_page.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  //body screens list
  List<Widget> body = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: body[_currentindex],
        bottomNavigationBar: Container(
          color: Colors.white,
          child: TabBar(
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
            indicator: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: AppColors.primary, // Indicator color
                  width: 3.0, // Indicator height
                ),
              ),
            ),
            indicatorPadding: const EdgeInsets.only(bottom: 45),
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.secondaryText,
            dividerColor: Colors.transparent,
            padding: const EdgeInsets.all(8),
          ),
        ),
      ),
    );
  }
}
