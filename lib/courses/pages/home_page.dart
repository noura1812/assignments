import 'package:flutter/material.dart';

import '../shared/app_constants.dart';
import '../widgets/course_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: AppConstants.courses.length,
          itemBuilder: (context, index) {
            return CourseItem(
              course: AppConstants.courses[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Courses"),
    );
  }
}
