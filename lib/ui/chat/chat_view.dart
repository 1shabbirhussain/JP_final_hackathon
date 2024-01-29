import 'package:flutter/material.dart';
import 'package:hackathon/assets/colors.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -------------------------APP BAR------------------
      appBar: AppBar(
        // leading: const Icon(Icons.apps),
        title: const Center(child: Text("Chat")),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      // -------------------------APP BAR------------------
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            // ----------------------------------------------email-------------------------
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,
                    color: MyColors.primaryLight), // Add search icon
                hintText: 'Search',
                contentPadding: const EdgeInsets.all(16.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: MyColors.primaryLight, width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: MyColors.black12, width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            // ----------------------------------------------email-------------------------
            SizedBox(
              height: 30,
            ),
            // -----------------------------------list view builder---------------------
            Expanded(
                child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person_2_outlined)),
                  title: Text("Jenny Alxinder"),
                  subtitle: Text("Active 1h ago"),
                  trailing: Icon(Icons.camera_alt_outlined),
                  shape: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5)),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
