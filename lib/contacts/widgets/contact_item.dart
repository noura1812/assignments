import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  ContactItem(
      {super.key,
      this.index,
      this.name = '',
      this.number = '',
      this.isVisible = false,
      this.onDelete});

  String name;
  String number;
  bool isVisible;
  Function? onDelete;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible ?? false,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: $name',
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  'Phone: $number',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            IconButton(
                onPressed: (){
                  onDelete!(index);
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
