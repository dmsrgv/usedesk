import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usedesk/usedesk.dart';
import 'package:usedesk_example/storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      home: SpecifyProjectPage(
        prefs: prefs,
      ),
    ),
  );
}

class SpecifyProjectPage extends StatefulWidget {
  const SpecifyProjectPage({super.key, required this.prefs});

  final SharedPreferences prefs;

  @override
  State<SpecifyProjectPage> createState() => _SpecifyProjectPageState();
}

class _SpecifyProjectPageState extends State<SpecifyProjectPage> {
  @override
  void initState() {
    super.initState();
    initUsedeskChat();
  }

  Future<UsedeskChat> initUsedeskChat() async {
    final usedeskChat = await UsedeskChat.init(
      storage: SharedPreferencesUsedeskChatStorage(widget.prefs),
      debug: true,
      companyId: '167613',
      channelId: '53976',
      token: null,
      onSetToken: (token) {
        print(token);
      },
    );

    usedeskChat.connect();

    return usedeskChat;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Чат'),
      ),
      body: FutureBuilder(
          future: initUsedeskChat(),
          builder: (context, future) {
            if (future.hasData) {
              return Column(
                children: [
                  StreamBuilder(
                    stream: future.data!.messagesStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Expanded(
                            child: ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  final message = snapshot.data![index];
                                  if (message.text != null) {
                                    return Text(message.text!);
                                  }

                                  if (message.buttons != null &&
                                      message.buttons!.isNotEmpty) {
                                    return Wrap(
                                      spacing: 8,
                                      children: [
                                        ...message.buttons!
                                            .map(
                                              (e) => ActionChip(
                                                label: Text(
                                                  e.text,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                backgroundColor: Colors.green,
                                                shadowColor:
                                                    Colors.green.shade800,
                                                elevation: 8,
                                                onPressed: () {
                                                  future.data!.sendText(e.text);
                                                },
                                              ),
                                            )
                                            .toList(),
                                      ],
                                    );
                                  }
                                  return const SizedBox();
                                }));
                      }

                      return const Text('Нет сообщений');
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        future.data!.sendText('Магазины');
                      },
                      child: Text('Отправить привет')),
                ],
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
