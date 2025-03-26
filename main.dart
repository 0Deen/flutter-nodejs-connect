import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  HomeScreen({super.key});

  void sendMessage(String message) {
    print(message);

    WebSocketChannel channel;

    try {
      channel = WebSocketChannel.connect(Uri.parse('ws://localhost:3000'));
      channel.sink.add(message);

      channel.stream.listen((message) {
        print(message);
        channel.sink.close();
      });
    } catch (e) {
      print(e);
    }

    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              hintText: 'Enter your message here',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (_textController.text.isNotEmpty) {
                  sendMessage(_textController.text);
                }
              },
              child: const Text('Send Message')),
        ],
      ),
    );
  }
}
