import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/pages/home/widgets/header.dart';
import 'package:my_first_flutter_app/pages/home/widgets/popular.dart';
import 'package:my_first_flutter_app/pages/home/widgets/search.dart';
import 'package:my_first_flutter_app/pages/home/widgets/category.dart';


class HomePage extends StatelessWidget {
 const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
           
            backgroundColor: const Color(0xFF5F67EA),
            body: SingleChildScrollView(
                child: Stack(
                  children: [
                    Transform(transform: Matrix4.identity()..rotateZ(20),
                      origin: const Offset(150, 50), 
                      child: Image.asset('assets/images/bg_liquid.png',
                      width: 200,
                      ),
                    ),
                    Positioned(
                        right: 0,
                        height: 200,
                        child: Transform(transform: Matrix4.identity()..rotateZ(20),   
                        origin: const Offset(180, 100), 
                        child: Image.asset('assets/images/bg_liquid.png',
                        width: 200,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const HeaderSection(),
                        const SearchSection(),
                        CategorySection(),
                      ],
                    )

                  ],
                )
            ),
            bottomNavigationBar: NavigationBar(),
          
        );
    }

    Widget NavigationBar() {
      return Container(
        // color: const Color(0xffff6f8ff),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
               BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
               ),
            ]
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
        selectedFontSize: 12,
        selectedItemColor: const Color(0xFF5F67EA),
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.home_rounded,
                size: 30,
                color: Color(0xFF5F67EA),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Application',
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
           BottomNavigationBarItem(
            label: 'Film',
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
           BottomNavigationBarItem(
            label: 'Book',
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.auto_stories_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
        ]
      ),
          ),
          
        ),
      );
      
    }
} 