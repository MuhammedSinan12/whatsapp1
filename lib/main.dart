import 'package:flutter/material.dart';
import 'package:whatsapp1/callscreen.dart';
import 'package:whatsapp1/chatscreen.dart';
import 'package:whatsapp1/statusscreen.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: Tabsss(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tabsss extends StatefulWidget {
  const Tabsss({super.key});

  @override
  State<Tabsss> createState() => _TabsssState();
}

class _TabsssState extends State<Tabsss> {
  List<Widget> screens = const [Chatss(), CallScreen(), StatusScreen()];
  double textTabWidth = 95;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          elevation: 2,
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text("Settings"),
                  ),
                  const PopupMenuItem(child: Text("About")),
                  const PopupMenuItem(child: Text("Help")),
                ];
              },
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 9, 142, 111),
          bottom: TabBar(
              indicatorColor: Colors.white,
              labelPadding: const EdgeInsets.symmetric(horizontal: 7),
              isScrollable: true,
              onTap: (int ind) {
                setState(() {});
              },
              tabs: [
                const SizedBox(
                    width: 40,
                    child: Tab(
                        icon: Icon(
                      Icons.camera_alt_rounded,
                      size: 26,
                    ))),
                SizedBox(
                  width: textTabWidth,
                  child: const Tab(
                    text: "CHATS",
                  ),
                ),
                SizedBox(
                  width: textTabWidth,
                  child: const Tab(
                    text: "STATUS",
                  ),
                ),
                SizedBox(
                  width: textTabWidth,
                  child: const Tab(
                    text: "CALL",
                  ),
                ),
              ]),
        ),
        body: const TabBarView(
            children: [SizedBox(), Chatss(), StatusScreen(), CallScreen()]),
      ),
    );
  }
}
