import 'package:freezed_annotation/freezed_annotation.dart';

import '../socket/message.dart';

export '../socket/message.dart' show MessageButton;

part 'base.g.dart';
part 'base.freezed.dart';

part 'text.dart';
part 'image.dart';
part 'unknown_file.dart';

mixin MessageBase {
  int get id;
  DateTime get createdAt;
}

enum MessageSentStatus {
  sending,
  success,
  failed,
}

/// Message sended from client
mixin MessageFromClient {
  int? get localId;
  MessageSentStatus get status;
}

mixin MessageTextBase {
  String get text;
  List<MessageButton> get buttons;
}

mixin MessageImageBase {
  MessageFile get file;
}

mixin MessageFileBase {
  MessageFile get file;
}

mixin MessageUploadFileBase {
  Stream<double>? get uploadProgress;
}
