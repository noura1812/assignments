import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Text(
                    "Owner",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("3h"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.public,
                        size: 18,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "My Post",
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            children: [
              const Text(
                "100",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "assets/images/love.jpeg",
                width: 30,
              ),
              const Spacer(),
              const Text(
                "100",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "Comments",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          const Divider(
            height: 3,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/like.jpeg",
                width: 25,
              ),
              const Text("Like"),
              const Spacer(),
              Image.asset(
                "assets/images/comment.jpeg",
                width: 25,
              ),
              const Text("Comment"),
              const Spacer(),
              Image.asset(
                "assets/images/share.jpeg",
                width: 25,
              ),
              const Text("Share"),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          const Divider(
            height: 3,
            color: Colors.grey,
          ),
        ],
      ),
    );
    ;
  }
}
