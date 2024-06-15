import 'package:flutter/material.dart';
import 'package:shop_ninja/styles/app_color.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<Message> messages = [
    Message(
      text: 'Hello',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
    Message(
      text: 'Hi, how can we help?',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
  ];

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller'),
      ),
      body: Column(
        children: [
          Expanded(child: GroupListView(messages: messages)),
          Container(
            color: AppColor.disabledLight,
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Enter your message here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String messageText = textEditingController.text.trim();
                    if (messageText.isNotEmpty) {
                      setState(() {
                        messages.add(Message(
                          text: messageText,
                          date: DateTime.now(),
                          isSentByMe: true,
                        ));
                      });
                      textEditingController.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GroupListView extends StatelessWidget {
  final List<Message> messages;

  GroupListView({required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        Message message = messages[index];
        bool isSentByMe = message.isSentByMe;
        CrossAxisAlignment crossAxisAlignment =
            isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
        Color bubbleColor =
            isSentByMe ? AppColor.background : AppColor.disabledLight;

        return Align(
          alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: bubbleColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: crossAxisAlignment,
                children: [
                  Text(
                    message.text,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Text(
                    message.date.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}
