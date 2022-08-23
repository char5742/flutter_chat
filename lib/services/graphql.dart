import 'package:flutter_chat/domain/graphql/chat/chat.graphql.dart';
import 'package:flutter_chat/domain/graphql/schema/schema.graphql.dart';
import 'package:flutter_chat/domain/graphql/user/user.graphql.dart';
import 'package:flutter_chat/provider/graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GraphQLService {
  final Ref ref;
  GraphQLClient get client => ref.read(clientProvider);
  GraphQLService(this.ref);
  Future<QueryResult<Mutation$UserSignUp>> userSignUp(
      Input$UserInfo info) async {
    return await client.mutate$UserSignUp(Options$Mutation$UserSignUp(
        variables: Variables$Mutation$UserSignUp(info: info)));
  }

  Future<QueryResult<Query$User>> userByKey(String key) async {
    return await client.query$User(
        Options$Query$User(variables: Variables$Query$User(userKey: key)));
  }

  ObservableQuery<Query$User> userByKeyWatch(String key) {
    return client.watchQuery$User(WatchOptions$Query$User(
      variables: Variables$Query$User(userKey: key),
      eagerlyFetchResults: true,
    ));
  }

  void userByKeyWrite(Query$User data, String key) {
    return client.writeQuery$User(
      data: data,
      variables: Variables$Query$User(userKey: key),
    );
  }

  Query$User? userByKeyRead(String key) {
    return client.readQuery$User(
      variables: Variables$Query$User(userKey: key),
    );
  }

  Future<QueryResult<Mutation$UserFollow>> userFollow(String key) async {
    return await client.mutate$UserFollow(Options$Mutation$UserFollow(
        variables: Variables$Mutation$UserFollow(userKey: key)));
  }

  Future<QueryResult<Mutation$UserUnFollow>> userUnFollow(String key) async {
    return await client.mutate$UserUnFollow(Options$Mutation$UserUnFollow(
        variables: Variables$Mutation$UserUnFollow(userKey: key)));
  }

  Future<QueryResult<Query$ChatUser>> chatUser(String key) async {
    return await client.query$ChatUser(Options$Query$ChatUser(
        variables: Variables$Query$ChatUser(userKey: key)));
  }

  Query$ChatUser? chatUserRead(String key) {
    return client.readQuery$ChatUser(
        variables: Variables$Query$ChatUser(userKey: key));
  }

  ObservableQuery<Query$ChatUser> chatUserWatch(String key) {
    return client.watchQuery$ChatUser(WatchOptions$Query$ChatUser(
        variables: Variables$Query$ChatUser(userKey: key),
        eagerlyFetchResults: true));
  }

  void chatUserWrite(Query$ChatUser data, String key) {
    client.writeQuery$ChatUser(
        data: data, variables: Variables$Query$ChatUser(userKey: key));
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
