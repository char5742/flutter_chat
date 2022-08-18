import 'package:flutter_chat/domain/graphql/chat/chat.graphql.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_chat/config/const.dart';
import 'package:flutter_chat/domain/graphql/schema/schema.graphql.dart';
import 'package:flutter_chat/domain/graphql/user/user.graphql.dart';

final clientProvider = Provider(
  (ref) => GraphQLClient(
    link: AuthLink(
        getToken: () => ref.watch(accountProvider).accessToken != null
            ? 'Bearer ${ref.watch(accountProvider).accessToken}'
            : null).concat(
      Link.split(
        (request) => request.isSubscription,
        WebSocketLink('ws$API',
            config: SocketClientConfig(initialPayload: {
              'Authorization': ref.watch(accountProvider).accessToken != null
                  ? 'Bearer ${ref.watch(accountProvider).accessToken}'
                  : ''
            }),
            subProtocol: GraphQLProtocol.graphqlTransportWs),
        HttpLink('http$API'),
      ),
    ),
    cache: GraphQLCache(),
  ),
);

final graphqlProvider = Provider(GraphQLRepository.new);

class GraphQLRepository {
  final Ref ref;
  GraphQLClient get client => ref.read(clientProvider);
  GraphQLRepository(this.ref);
  Future<QueryResult<Mutation$UserSignUp>> userSignUp(
      Input$UserInfo info) async {
    return await client.mutate$UserSignUp(Options$Mutation$UserSignUp(
        variables: Variables$Mutation$UserSignUp(info: info)));
  }

  Future<QueryResult<Query$User>> userByKey(String key) async {
    return await client.query$User(
        Options$Query$User(variables: Variables$Query$User(userKey: key)));
  }

  Future<QueryResult<Query$ChatUser>> chatUser(String key) async {
    return await client.query$ChatUser(Options$Query$ChatUser(
        variables: Variables$Query$ChatUser(userKey: key)));
  }

  Future<QueryResult<Mutation$ChatSend>> chatSend(Input$ChatInfo info) async {
    return await client.mutate$ChatSend(Options$Mutation$ChatSend(
        variables: Variables$Mutation$ChatSend(info: info)));
  }

  Future<QueryResult<Mutation$ChatDelete>> chatDelete(String key) async {
    return await client.mutate$ChatDelete(Options$Mutation$ChatDelete(
        variables: Variables$Mutation$ChatDelete(chatKey: key)));
  }

  Stream<QueryResult<Subscription$ChatSend>> chatSendWatch() {
    return client.subscribe$ChatSend();
  }
}
