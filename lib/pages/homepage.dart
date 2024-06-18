import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:medical_app/modal/doctors_info.dart';
import 'package:medical_app/pages/book_appointment.dart';
import 'package:medical_app/service/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      color: containerBlue,
      child: Scaffold(
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
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    color: containerBlue,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Good morning Jake",
                          style: TextStyle(
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: white,
                            fontSize: 25
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    prefixIcon: Icon(
                                      Icons.search,
                                      size: 30,
                                      color: containerBlue,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                    )
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: const Icon(
                                  Icons.tune_rounded
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 40,),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Find your doctor",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "See all",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 80,)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: white,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 140),
                        const Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 40,),
            
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset("images/tooth.jpeg"),
                                    ),
                                    const Text(
                                      "Dentist",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.favorite, color: Colors.red,),
                                    ),
                                    Text(
                                      "Cardiologist",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
      
            Positioned(
              top: 250,
              right: 0,
              left: 0,
              child: SizedBox(
                height: 180,
                width: Get.width,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(()=> const BookAppointment());
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              image: DecorationImage(
                                image: AssetImage("images/${doctor.map((e) => e.photo).toList().elementAt(index)}"),
                                scale: 2,
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: white, width: 2),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              doctor.map((e) => e.name).toList().elementAt(index),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              doctor.map((e) => e.specialty).toList().elementAt(index),
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}