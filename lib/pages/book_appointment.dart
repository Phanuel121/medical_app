import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/service/styles.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 255.0,
            floating: false,
            pinned: false,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back),
            ),
            centerTitle: false,
            title: const Text(
              'Details',
              textAlign: TextAlign.start,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [containerBlue, Colors.blue],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Align(
                  alignment: const Alignment(0, 0.9),
                  child: Row(
                    children: [
                      Container(
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: white, width: 2),
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("images/doctor2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Dr. Larry A.",
                            style: TextStyle(
                              color: white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Cardiologist",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 17,
                                color: white,
                              ),
                              Text(
                                "Los Angeles, Us",
                                style: TextStyle(
                                  color: white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade800,
                                      size: 17,
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "4,5",
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 17,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "254",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: white
                                    ),
                                  ),
                                  Text(
                                    "Reviews",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: white
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 15),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "+10",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: white
                                    ),
                                  ),
                                  Text(
                                    "Years exp.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: white
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 15),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1552",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: white
                                    ),
                                  ),
                                  Text(
                                    "Patients",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: white
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ];
      },


      body: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 0,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10,),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade700,
                    border: Border.all(
                      color: white,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Call",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(
                      color: black,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Message",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.purple.shade700,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children:  [
            const Title(text: "About", detail: "", more: "Read more",),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,),
              child: Text(
                "Dr. Larry A. is a cardiologist with over 10 years of experience who actively serves patients at Cedars-Sinai Medical Center. He received his specialist's degree after completing his graduate stu...",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Title(text: "Review", detail: "(254)", more: "See all",),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ReviewCard(
                    name: "Elizabeth Moka",
                    time: "2 days ago",
                    photo: "user3",
                    description: "He's really competent! I've rarely seen a doctor as professional and experienced as he is. Thank you very much",
                  ),
                  ReviewCard(
                    name: "Daniel Scott",
                    time: "4 days ago",
                    photo: "user2",
                    description: "Always ready to listen, he is competent in what he does. He's very good and masters his field.",
                  ),
                  ReviewCard(
                    name: "Myke Houston",
                    time: "a week ago",
                    photo: "user3",
                    description: "He's really competent! I've rarely seen a doctor as professional and experienced as he is. Thank you very much",
                  ),
                ],
              ),
            ),
            const Title(text: "Schedules", detail: "", more: "",),
            SizedBox(
              height: 75,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  String days(){
                    if (index == 0) {
                      return "Mon";
                    } else if(index == 1) {
                      return "Tue";
                    } else if(index == 2) {
                      return "Wed";
                    } else if(index == 3) {
                      return "Thu";
                    } else if(index == 4) {
                      return "Fri";
                    } else if(index == 5) {
                      return "Sat";
                    } else {
                      return "Sun";
                    }
                  }
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15,),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: index ==1?  const Color.fromARGB(255, 255, 187, 60) : const Color.fromARGB(255, 190, 218, 230),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            days(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "${12 + index}",
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Title(text: "Choose time", detail: "", more: "",),
            SizedBox(
              height: 50,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: index ==3?  const Color.fromARGB(255, 255, 187, 60) : const Color.fromARGB(255, 190, 218, 230),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        "${6 + index} am",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),


        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20),
                backgroundColor: Colors.blue.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),),),
            onPressed: () {},
            child: Text(
              "Book my appointment",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: white),
            ),
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String time;
  final String description;
  final String photo;
  const ReviewCard({
    required this.name,
    required this.time,
    required this.description,
    required this.photo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: white,
      width: 290,
      margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/$photo.jpeg"),
                  ),
                  const SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 19,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "5.0",
                  )
                ],
              )
            ],
          ),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String text;
  final String detail;
  final String more;
  const Title({
    required this.text,
    required this.detail,
    required this.more,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 5, left: 10, right: 10,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                detail,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Text(
            more,
            style: TextStyle(
              color: Colors.blue.shade900,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}