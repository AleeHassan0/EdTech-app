import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_4/model/course_model.dart';
import 'package:ui_4/sub_screens/course_detail.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    List<Courses> filteredCourseList = []; //initially it is empty

    // @override
    // void initState() {
    //   super.initState();
    //   filteredCourseList = coursesList.cast<Courses>();
    //   _searchController.addListener(_filterCourses);
    // }

    // void _filterCourses(){
    //   setState(() {
    //     filteredCourseList=coursesList.where((Course)=>course.name.toLowerCase())
    //   });
    // }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 80),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Ali Hassan',
                        style: GoogleFonts.caveat(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(40)),
                      child: const Icon(
                        CupertinoIcons.bell,
                        size: 30,
                      ))
                ],
              ),
              Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black54)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(CupertinoIcons.search),
                        hintText: 'Search course',
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Category:',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 75,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff65AAEA)),
                        child: const Center(
                            child: Text(
                          '#Swift',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff65AAEA)),
                        child: const Center(
                            child: Text(
                          '#UI',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff65AAEA)),
                        child: const Center(
                            child: Text(
                          '#UX',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff65AAEA)),
                        child: const Center(
                            child: Text(
                          '#Flutter',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff65AAEA)),
                        child: const Center(
                            child: Text(
                          '#CSS',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ))),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              for (int i = 0; i < coursesList.length; i++)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CourseDetails(
                                    name: coursesList[i].name,
                                    image: coursesList[i].image,
                                    fullDetails: coursesList[i].fullDescription,
                                    duration: coursesList[i].duration,
                                  )));
                    },
                    child: CourseItemWidget(
                      name: coursesList[i].name,
                      duration: coursesList[i].duration,
                      price: coursesList[i].price,
                      image: coursesList[i].image,
                      description: coursesList[i].description,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({
    super.key,
    required this.description,
    required this.price,
    required this.name,
    required this.image,
    required this.duration,
  });

  final String image;
  final String price;
  final String name;
  final String duration;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 343,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
              child: Image.asset(
            image,
          )),
          Positioned(
            right: 10,
            bottom: 93,
            child: Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(0.7)),
                child: Center(
                    child: Text(
                  price,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ))),
          ),
          Positioned(
              left: 10,
              bottom: 80,
              child: Text(
                duration,
                style: const TextStyle(
                    color: Colors.green, fontWeight: FontWeight.w700),
              )),
          Positioned(
              left: 10,
              bottom: 40,
              child: Text(
                name,
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )),
          Positioned(
              left: 10,
              bottom: 20,
              child: Text(
                description,
                style: const TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w700),
              )),
        ],
      ),
    );
  }
}
