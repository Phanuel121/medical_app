import 'package:flutter/material.dart';
import 'package:medical_app/service/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: containerBlue,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined, color: white,),),
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Jake O'Brian",
              style: TextStyle(
                fontSize: 16,
                color: white
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: white,
                ),
                Text(
                  "Los Angeles, Us",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: white
                  ),
                )
              ],
            ),
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("images/user.jpeg"),
                  scale: 2,
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          const SizedBox(width: 15,),
        ],
      ),
      
    );
  }
}