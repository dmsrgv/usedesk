import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usedesk/usedesk.dart';
import 'package:usedesk_example/storage.dart';

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
  late UsedeskChat usedeskChat;
  @override
  void initState() {
    super.initState();
    usedeskChat = UsedeskChat.init(
      storage: SharedPreferencesUsedeskChatStorage(widget.prefs),
      debug: true,
      channelId: '53760214124',
      companyId: '167613214124',
      token: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чат'),
      ),
      body: Chat(usedeskChat: usedeskChat),
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
  @override
  void initState() {
    super.initState();
    widget.usedeskChat.connect(
      timeout: const Duration(seconds: 5),
      onSuccess: (token) {
        print('token vot $token');
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
                widget.usedeskChat.sendText('Привет');
              },
              child: const Text('Отправить привет')),
        ],
      ),
    );
  }
}
