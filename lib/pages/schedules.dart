import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/service/styles.dart';

class Schedules extends StatelessWidget {
  const Schedules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Schedule",
          style: TextStyle(
            color: black,
            fontSize: 30
          ),
        ),
      ),
      body: Column(
        children: [
          Selector(),
          Flexible(
            child: ListView(
              children: const [
                Title(text: "This month",),
                ScheduleCard(
                  doctorName: "Dr. Larry A.",
                  speciality: "Cardiologist",
                  photo: "doctor2",
                  schedule: "06/21/2024",
                  hour: "10:00 AM",
                  isConfirmed: false,
                ),
                
                Title(text: "Future visit",),
                ScheduleCard(
                  doctorName: "Dr. Shalom M.",
                  speciality: "Pediatrician",
                  photo: "doctor1",
                  schedule: "08/13/2024",
                  hour: "09:00 AM",
                  isConfirmed: true,
                ),
                ScheduleCard(
                  doctorName: "Dr. Karl D.",
                  speciality: "Dermatologist",
                  photo: "doctor4",
                  schedule: "11/12/2024",
                  hour: "11:00 AM",
                  isConfirmed: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  final String doctorName;
  final String speciality;
  final String photo;
  final String schedule;
  final String hour;
  final bool isConfirmed;
  const ScheduleCard({
    required this.doctorName,
    required this.speciality,
    required this.photo,
    required this.schedule,
    required this.hour,
    required this.isConfirmed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/$photo.jpeg"),
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      speciality,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                )
              ],
            ),
            
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.date_range,
                      size: 17,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      schedule
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.timer,
                      size: 17,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      hour
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      isConfirmed? Icons.check_circle : Icons.warning,
                      size: 17,
                      color: isConfirmed? Colors.green : Colors.yellow,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      isConfirmed? "Confirmed" : "Pending"
                    )
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: white
                    ),
                    onPressed: (){}, 
                    child: const Text(
                      "Reschedule"
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    onPressed: (){}, 
                    child: const Text(
                      "Cancel"
                    ),
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

class Title extends StatelessWidget {
  final String text;
  const Title({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25
        ),
      ),
    );
  }
}

class Selector extends StatelessWidget {
  const Selector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                      BoxShadow(
                        color: black,
                        blurRadius: 1,
                        offset: const Offset(0, 0),
                      ),
                    ]
                ),
                child: Center(
                  child: Text(
                    'Upcoming',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Completed',
                    style: TextStyle(
                      color: black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(width: 2, child: Container(width: 2, color: Colors.black54,),),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Canceled',
                    style: TextStyle(
                      color: black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}