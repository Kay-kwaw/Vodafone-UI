import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vodafone/commons/ThemeManager.dart';
import 'package:vodafone/second_screen.dart';

class MybottomNavbar extends StatelessWidget {
  const MybottomNavbar({super.key});

  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
          onTap: (index) {
            // setState(() {
            // });
          },
          items:  [
          const BottomNavigationBarItem(
            icon: Icon(Icons.computer_outlined,),
            label: 'Services',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.money,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              themeProvider.toggleTheme();
            //    Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const SecondScreen()),
            // );
            },
            child: InkWell(
              onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();

              },
              child: Image.asset("assets/TObi-2.png", height: 60,))),
              label: '', // You can keep a label for accessibility
            ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,),
            label: 'Bundles',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            label: 'Settings',
          ),
  ],
          selectedItemColor: Colors.red, // You can customize the selected item color
          unselectedItemColor: Colors.grey, // You can customize the unselected item color
          showUnselectedLabels: true, // Set this to false if you don't want to show unselected labels
          selectedFontSize: 8, // Set the font size for the selected label
          unselectedFontSize: 10, // 
    );
  }

}