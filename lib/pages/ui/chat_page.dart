part of '../pages.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor2,
      centerTitle: true,
      title: Text(
        'Message Support',
        style: primaryTextStyle.copyWith(fontWeight: FontWeight.w200),
      ),
      automaticallyImplyLeading: false,
    );
  }

  Widget message() {
    return const Column(
      children: [
        ChatCard(),
        ChatCard(),
        ChatCard(),
      ],
    );
  }

  Widget messageEmpty() {
    return const Expanded(
      child: Text('Message Empty'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor1,
        body: ListView(
          children: [
            header(),
            message(),
          ],
        ),
    );
  }
}
