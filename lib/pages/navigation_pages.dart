import 'package:flutter/material.dart';
import 'package:medical_app/pages/homepage.dart';
import 'package:medical_app/pages/schedules.dart';
import 'package:medical_app/service/provider.dart';
import 'package:medical_app/service/variables.dart';
import 'package:provider/provider.dart';

PageController pageController = PageController(initialPage: 0);
class NavigationPages extends StatelessWidget {
  const NavigationPages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<StateManager>(
      builder: (context, s, child) {
        return Scaffold(
    
          body: PageView(
            controller: pageController,
            children: [
              const HomePage(),
              const Schedules(),
              Container(color: Colors.green.shade100,),
              Container(color: Colors.deepOrange.shade100,),
            ],
          ),
    
    
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: pageIndex,
              fixedColor: Colors.black,
              selectedIconTheme: const IconThemeData(color: Colors.blue),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (i){
                s.navigationChanger(i);
                pageController.animateToPage(i, duration:const Duration(milliseconds: 1), curve: Curves.ease);
              },
              items:  const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled,),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.date_range,),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message,),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined,),
                  label: "",
                ),
                
              ],
            ),
        );
      }
    );
  }
}