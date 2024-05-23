import 'package:assignments/courses/pages/course_details_page.dart';
import 'package:flutter/material.dart';

import '../models/course_model.dart';
import '../shared/app_colors.dart';

class CourseItem extends StatelessWidget {
  final CourseModel course;

  const CourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          course.courseImagePath,
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppColors.primaryColor,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetailsPage(course: course),
              ),
            );
          },
          child: Text(
            course.courseTitle,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
