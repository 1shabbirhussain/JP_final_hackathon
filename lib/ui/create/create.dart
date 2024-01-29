import 'package:flutter/material.dart';
import 'package:hackathon/assets/colors.dart';

class CreateView extends StatelessWidget {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: MyColors.black26, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(
                    width: 10,
                  ),
                  const Text("Create Task")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: MyColors.black26, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Icon(Icons.add_circle_outline_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Create Project")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: MyColors.black26, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Icon(Icons.people_outline_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Create Team")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: MyColors.black26, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Icon(Icons.watch_later_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Create Event")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
