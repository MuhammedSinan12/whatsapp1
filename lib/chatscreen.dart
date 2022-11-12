import 'package:flutter/material.dart';
import 'package:whatsapp1/datasss.dart';

class Chatss extends StatelessWidget {
  const Chatss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat_rounded),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(Datass().chats[index][0]),
              ),
              title: Text(
                Datass().chats[index][1],
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                Datass().chats[index][2],
                style: const TextStyle(
                    color: Colors.black54, fontSize: 14, letterSpacing: 0.4),
              ),
              trailing: Text(
                Datass().chats[index][3],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black38,
              indent: 88,
            );
          },
          itemCount: Datass().chats.length),
    );
  }
}

// import 'package:flutter/material.dart';

// import 'package:whatsapp1/datasss.dart';

// class ChatScreen extends StatelessWidget {
//   const ChatScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Colors.white,
//       //extendBodyBehindAppBar: true,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.chat_rounded),
//       ),
//       body: ListView.separated(
//           padding: const EdgeInsets.only(top: 10),
//           itemBuilder: (context, index) {
//             return ListTile(
//               contentPadding: const EdgeInsets.symmetric(
//                 horizontal: 20,
//               ),
//               leading: CircleAvatar(
//                 radius: 26,
//                 backgroundImage: NetworkImage(Datass().chats[index][0]),
//               ),
//               title: Text(
//                 Datass().chats[index][1],
//                 style: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600),
//               ),
//               subtitle: Text(
//                 Datass().chats[index][2],
//                 style: const TextStyle(
//                     color: Colors.black54, fontSize: 14, letterSpacing: 0.7),
//               ),
//               trailing: Text(
//                 Datass().chats[index][3],
//                 style: const TextStyle(
//                   color: Colors.white70,
//                   fontSize: 13,
//                 ),
//               ),
//             );
//           },
//           separatorBuilder: (context, index) {
//             return const Divider(
//               color: Colors.black38,
//               indent: 88,
//             );
//           },
//           itemCount: Datass().chats.length),
//     );
//   }
// }
