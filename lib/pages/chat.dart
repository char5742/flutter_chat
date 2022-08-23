import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/chat.dart';
import 'package:flutter_chat/pages/component.dart';
import 'package:flutter_chat/provider/chat.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/services/chat.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_chat/utils/date_format.dart';

class ChatRoomPage extends HookConsumerWidget {
  final String userKey;
  const ChatRoomPage({Key? key, required this.userKey}) : super(key: key);

  @override
  Widget build(context, ref) {
    final userAsync = ref.watch(userProvider(userKey));
    final theme = Theme.of(context);
    final chatController = useTextEditingController();
    final scrollController = useScrollController();

    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            userAsync.asData?.value?.name ?? '',
          ),
          leading: OutlinedIconButton(
            icon: Icons.arrow_back_ios,
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: userAsync.whenOrNull(
          data: (data) {
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      reverse: true,
                      controller: scrollController,
                      child: Column(
                        children: [
                          ...?ref
                              .watch(chatRoomProvider(userKey))
                              ?.map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: ChatBox(
                                    chat: e,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: theme.primaryColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 50,
                            right: 0,
                            top: 10,
                            bottom: 10,
                          ),
                          child: TextFormField(
                            maxLines: 4,
                            minLines: 1,
                            decoration: InputDecoration(
                              isDense: true,
                              isCollapsed: true,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                            controller: chatController,
                            style: theme.primaryTextTheme.bodyText1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 8.0,
                          bottom: 6,
                        ),
                        child: OutlinedIconButton(
                          icon: Icons.send_outlined,
                          onPressed: () {
                            ref.read(chatServiceProvider).chatSend(
                                  data: chatController.text,
                                  recieverKey: data!.key,
                                );
                            chatController.clear();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => Container(),
          error: (_, __) => Container(),
        ));
  }
}

class ChatBox extends HookConsumerWidget {
  final Chat chat;
  const ChatBox({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    final userKey = chat.senderKey;

    final userAsync = ref.watch(userProvider(userKey));
    final theme = Theme.of(context);

    final rows = [
      Container(
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: theme.primaryColor)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(chat.data, style: theme.primaryTextTheme.bodyText1),
      ),
      const Padding(padding: EdgeInsets.only(left: 5)),
      Text(formatDateTime(chat.created),
          style: theme.primaryTextTheme.bodyText2)
    ];
    return userAsync.when(
      data: (data) {
        final isMe = ref.watch(accountProvider).key == data?.key;
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isMe)
                Text(data?.name ?? '', style: theme.primaryTextTheme.bodyText2),
              Row(
                mainAxisAlignment:
                    isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: isMe ? rows.reversed.toList() : rows,
              ),
            ],
          ),
        );
      },
      loading: () => Container(),
      error: (_, __) => Container(),
    );
  }
}
