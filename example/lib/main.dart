import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usedesk/usedesk.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      home: HomeScreen(
        prefs: prefs,
      ),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.prefs});

  final SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SpecifyProjectPage(
                prefs: prefs,
              ),
            ),
          ),
          child: Text('Чат'),
        ),
      ),
    );
  }
}

class SpecifyProjectPage extends StatefulWidget {
  const SpecifyProjectPage({super.key, required this.prefs});

  final SharedPreferences prefs;

  @override
  State<SpecifyProjectPage> createState() => _SpecifyProjectPageState();
}

class _SpecifyProjectPageState extends State<SpecifyProjectPage> {
  late Future<UsedeskChat> _usedeskChat;
  @override
  void initState() {
    super.initState();
    _usedeskChat = createSession();
  }

  Future<UsedeskChat> createSession() async {
    final usedeskChat = await UsedeskChat.init(
      debug: true,
      channelId: '123',
      companyId: '123',
      token: null,
    );

    usedeskChat.identify = const IdentifyConfiguration(
      email: 'test@test.ru',
      name: 'Dimon',
      phoneNumber: 9999,
      additionalId: '1',
    );

    return usedeskChat;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чат'),
      ),
      body: FutureBuilder<UsedeskChat>(
          future: _usedeskChat,
          builder: (context, snapshot) {
            if (snapshot.data == null) return const SizedBox();
            return Chat(usedeskChat: snapshot.data!);
          }),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({super.key, required this.usedeskChat});

  final UsedeskChat usedeskChat;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int count = 100;
  @override
  void initState() {
    super.initState();
    widget.usedeskChat.connect(
      timeout: const Duration(seconds: 10),
      onSuccess: (token) {
        widget.usedeskChat.sendAdditionalFields(fields: {
          25179: '1.1.1',
          25182: 'Android',
          25181: 'Xiaomi',
          25180: 'Мск',
          25178: 'true',
        });
      },
      onFailed: () {
        Navigator.maybePop(context);
      },
    );
  }

  @override
  void dispose() {
    widget.usedeskChat.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: widget.usedeskChat.messagesStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              if (snapshot.hasData &&
                  snapshot.data != null &&
                  snapshot.data!.isNotEmpty) {
                return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final message = snapshot.data![index];
                          if (message.text != null) {
                            return Column(
                              children: [
                                Text(message.text!),
                                if (message.buttons != null)
                                  Wrap(
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
                                              onPressed: () {},
                                            ),
                                          )
                                          .toList(),
                                    ],
                                  ),
                              ],
                            );
                          }
                          return const SizedBox();
                        }));
              }

              return const Text('нет сообщений');
            },
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
                widget.usedeskChat.sendText('Сообщение $count');
              },
              child: const Text('Отправить Сообщение')),
        ],
      ),
    );
  }
}
