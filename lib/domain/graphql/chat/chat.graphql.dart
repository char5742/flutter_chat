import '../schema/schema.graphql.dart';
import '../user/user.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$ChatSummary {
  Fragment$ChatSummary(
      {required this.key,
      required this.data,
      required this.created,
      this.sender,
      this.reciever,
      required this.$__typename});

  factory Fragment$ChatSummary.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$data = json['data'];
    final l$created = json['created'];
    final l$sender = json['sender'];
    final l$reciever = json['reciever'];
    final l$$__typename = json['__typename'];
    return Fragment$ChatSummary(
        key: (l$key as String),
        data: (l$data as String),
        created: DateTime.parse((l$created as String)),
        sender: l$sender == null
            ? null
            : Fragment$UserSummary.fromJson((l$sender as Map<String, dynamic>)),
        reciever: l$reciever == null
            ? null
            : Fragment$UserSummary.fromJson(
                (l$reciever as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final String key;

  final String data;

  final DateTime created;

  final Fragment$UserSummary? sender;

  final Fragment$UserSummary? reciever;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$created = created;
    _resultData['created'] = l$created.toIso8601String();
    final l$sender = sender;
    _resultData['sender'] = l$sender?.toJson();
    final l$reciever = reciever;
    _resultData['reciever'] = l$reciever?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$data = data;
    final l$created = created;
    final l$sender = sender;
    final l$reciever = reciever;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$key, l$data, l$created, l$sender, l$reciever, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ChatSummary) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$sender = sender;
    final lOther$sender = other.sender;
    if (l$sender != lOther$sender) {
      return false;
    }
    final l$reciever = reciever;
    final lOther$reciever = other.reciever;
    if (l$reciever != lOther$reciever) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ChatSummary on Fragment$ChatSummary {
  CopyWith$Fragment$ChatSummary<Fragment$ChatSummary> get copyWith =>
      CopyWith$Fragment$ChatSummary(this, (i) => i);
}

abstract class CopyWith$Fragment$ChatSummary<TRes> {
  factory CopyWith$Fragment$ChatSummary(Fragment$ChatSummary instance,
          TRes Function(Fragment$ChatSummary) then) =
      _CopyWithImpl$Fragment$ChatSummary;

  factory CopyWith$Fragment$ChatSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatSummary;

  TRes call(
      {String? key,
      String? data,
      DateTime? created,
      Fragment$UserSummary? sender,
      Fragment$UserSummary? reciever,
      String? $__typename});
  CopyWith$Fragment$UserSummary<TRes> get sender;
  CopyWith$Fragment$UserSummary<TRes> get reciever;
}

class _CopyWithImpl$Fragment$ChatSummary<TRes>
    implements CopyWith$Fragment$ChatSummary<TRes> {
  _CopyWithImpl$Fragment$ChatSummary(this._instance, this._then);

  final Fragment$ChatSummary _instance;

  final TRes Function(Fragment$ChatSummary) _then;

  static const _undefined = {};

  TRes call(
          {Object? key = _undefined,
          Object? data = _undefined,
          Object? created = _undefined,
          Object? sender = _undefined,
          Object? reciever = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$ChatSummary(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          data: data == _undefined || data == null
              ? _instance.data
              : (data as String),
          created: created == _undefined || created == null
              ? _instance.created
              : (created as DateTime),
          sender: sender == _undefined
              ? _instance.sender
              : (sender as Fragment$UserSummary?),
          reciever: reciever == _undefined
              ? _instance.reciever
              : (reciever as Fragment$UserSummary?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$UserSummary<TRes> get sender {
    final local$sender = _instance.sender;
    return local$sender == null
        ? CopyWith$Fragment$UserSummary.stub(_then(_instance))
        : CopyWith$Fragment$UserSummary(local$sender, (e) => call(sender: e));
  }

  CopyWith$Fragment$UserSummary<TRes> get reciever {
    final local$reciever = _instance.reciever;
    return local$reciever == null
        ? CopyWith$Fragment$UserSummary.stub(_then(_instance))
        : CopyWith$Fragment$UserSummary(
            local$reciever, (e) => call(reciever: e));
  }
}

class _CopyWithStubImpl$Fragment$ChatSummary<TRes>
    implements CopyWith$Fragment$ChatSummary<TRes> {
  _CopyWithStubImpl$Fragment$ChatSummary(this._res);

  TRes _res;

  call(
          {String? key,
          String? data,
          DateTime? created,
          Fragment$UserSummary? sender,
          Fragment$UserSummary? reciever,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$UserSummary<TRes> get sender =>
      CopyWith$Fragment$UserSummary.stub(_res);
  CopyWith$Fragment$UserSummary<TRes> get reciever =>
      CopyWith$Fragment$UserSummary.stub(_res);
}

const fragmentDefinitionChatSummary = FragmentDefinitionNode(
    name: NameNode(value: 'ChatSummary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Chat'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'key'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'data'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'created'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'sender'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'UserSummary'), directives: []),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: 'reciever'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'UserSummary'), directives: []),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentChatSummary = DocumentNode(definitions: [
  fragmentDefinitionChatSummary,
  fragmentDefinitionUserSummary,
]);

extension ClientExtension$Fragment$ChatSummary on graphql.GraphQLClient {
  void writeFragment$ChatSummary(
          {required Fragment$ChatSummary data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'ChatSummary',
                  document: documentNodeFragmentChatSummary)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$ChatSummary? readFragment$ChatSummary(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'ChatSummary',
                document: documentNodeFragmentChatSummary)),
        optimistic: optimistic);
    return result == null ? null : Fragment$ChatSummary.fromJson(result);
  }
}

class Variables$Query$ChatUser {
  factory Variables$Query$ChatUser({required String userKey}) =>
      Variables$Query$ChatUser._({
        r'userKey': userKey,
      });

  Variables$Query$ChatUser._(this._$data);

  factory Variables$Query$ChatUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userKey = data['userKey'];
    result$data['userKey'] = (l$userKey as String);
    return Variables$Query$ChatUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userKey => (_$data['userKey'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userKey = userKey;
    result$data['userKey'] = l$userKey;
    return result$data;
  }

  CopyWith$Variables$Query$ChatUser<Variables$Query$ChatUser> get copyWith =>
      CopyWith$Variables$Query$ChatUser(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ChatUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userKey = userKey;
    final lOther$userKey = other.userKey;
    if (l$userKey != lOther$userKey) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userKey = userKey;
    return Object.hashAll([l$userKey]);
  }
}

abstract class CopyWith$Variables$Query$ChatUser<TRes> {
  factory CopyWith$Variables$Query$ChatUser(Variables$Query$ChatUser instance,
          TRes Function(Variables$Query$ChatUser) then) =
      _CopyWithImpl$Variables$Query$ChatUser;

  factory CopyWith$Variables$Query$ChatUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ChatUser;

  TRes call({String? userKey});
}

class _CopyWithImpl$Variables$Query$ChatUser<TRes>
    implements CopyWith$Variables$Query$ChatUser<TRes> {
  _CopyWithImpl$Variables$Query$ChatUser(this._instance, this._then);

  final Variables$Query$ChatUser _instance;

  final TRes Function(Variables$Query$ChatUser) _then;

  static const _undefined = {};

  TRes call({Object? userKey = _undefined}) =>
      _then(Variables$Query$ChatUser._({
        ..._instance._$data,
        if (userKey != _undefined && userKey != null)
          'userKey': (userKey as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ChatUser<TRes>
    implements CopyWith$Variables$Query$ChatUser<TRes> {
  _CopyWithStubImpl$Variables$Query$ChatUser(this._res);

  TRes _res;

  call({String? userKey}) => _res;
}

class Query$ChatUser {
  Query$ChatUser({this.user, required this.$__typename});

  factory Query$ChatUser.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$ChatUser(
        user: l$user == null
            ? null
            : Query$ChatUser$user.fromJson((l$user as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$ChatUser$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ChatUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ChatUser on Query$ChatUser {
  CopyWith$Query$ChatUser<Query$ChatUser> get copyWith =>
      CopyWith$Query$ChatUser(this, (i) => i);
}

abstract class CopyWith$Query$ChatUser<TRes> {
  factory CopyWith$Query$ChatUser(
          Query$ChatUser instance, TRes Function(Query$ChatUser) then) =
      _CopyWithImpl$Query$ChatUser;

  factory CopyWith$Query$ChatUser.stub(TRes res) =
      _CopyWithStubImpl$Query$ChatUser;

  TRes call({Query$ChatUser$user? user, String? $__typename});
  CopyWith$Query$ChatUser$user<TRes> get user;
}

class _CopyWithImpl$Query$ChatUser<TRes>
    implements CopyWith$Query$ChatUser<TRes> {
  _CopyWithImpl$Query$ChatUser(this._instance, this._then);

  final Query$ChatUser _instance;

  final TRes Function(Query$ChatUser) _then;

  static const _undefined = {};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$ChatUser(
          user: user == _undefined
              ? _instance.user
              : (user as Query$ChatUser$user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$ChatUser$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$ChatUser$user.stub(_then(_instance))
        : CopyWith$Query$ChatUser$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$ChatUser<TRes>
    implements CopyWith$Query$ChatUser<TRes> {
  _CopyWithStubImpl$Query$ChatUser(this._res);

  TRes _res;

  call({Query$ChatUser$user? user, String? $__typename}) => _res;
  CopyWith$Query$ChatUser$user<TRes> get user =>
      CopyWith$Query$ChatUser$user.stub(_res);
}

const documentNodeQueryChatUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ChatUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userKey')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'userKey'),
                  value: VariableNode(name: NameNode(value: 'userKey')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'send'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'ChatSummary'), directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'recieve'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'ChatSummary'), directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionChatSummary,
  fragmentDefinitionUserSummary,
]);
Query$ChatUser _parserFn$Query$ChatUser(Map<String, dynamic> data) =>
    Query$ChatUser.fromJson(data);

class Options$Query$ChatUser extends graphql.QueryOptions<Query$ChatUser> {
  Options$Query$ChatUser(
      {String? operationName,
      required Variables$Query$ChatUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryChatUser,
            parserFn: _parserFn$Query$ChatUser);
}

class WatchOptions$Query$ChatUser
    extends graphql.WatchQueryOptions<Query$ChatUser> {
  WatchOptions$Query$ChatUser(
      {String? operationName,
      required Variables$Query$ChatUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryChatUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$ChatUser);
}

class FetchMoreOptions$Query$ChatUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ChatUser(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$ChatUser variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryChatUser);
}

extension ClientExtension$Query$ChatUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ChatUser>> query$ChatUser(
          Options$Query$ChatUser options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ChatUser> watchQuery$ChatUser(
          WatchOptions$Query$ChatUser options) =>
      this.watchQuery(options);
  void writeQuery$ChatUser(
          {required Query$ChatUser data,
          required Variables$Query$ChatUser variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryChatUser),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$ChatUser? readQuery$ChatUser(
      {required Variables$Query$ChatUser variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryChatUser),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$ChatUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ChatUser> useQuery$ChatUser(
        Options$Query$ChatUser options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ChatUser> useWatchQuery$ChatUser(
        WatchOptions$Query$ChatUser options) =>
    graphql_flutter.useWatchQuery(options);

class Query$ChatUser$Widget extends graphql_flutter.Query<Query$ChatUser> {
  Query$ChatUser$Widget(
      {widgets.Key? key,
      required Options$Query$ChatUser options,
      required graphql_flutter.QueryBuilder<Query$ChatUser> builder})
      : super(key: key, options: options, builder: builder);
}

class Query$ChatUser$user {
  Query$ChatUser$user({this.send, this.recieve, required this.$__typename});

  factory Query$ChatUser$user.fromJson(Map<String, dynamic> json) {
    final l$send = json['send'];
    final l$recieve = json['recieve'];
    final l$$__typename = json['__typename'];
    return Query$ChatUser$user(
        send: (l$send as List<dynamic>?)
            ?.map((e) =>
                Fragment$ChatSummary.fromJson((e as Map<String, dynamic>)))
            .toList(),
        recieve: (l$recieve as List<dynamic>?)
            ?.map((e) =>
                Fragment$ChatSummary.fromJson((e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Fragment$ChatSummary>? send;

  final List<Fragment$ChatSummary>? recieve;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$send = send;
    _resultData['send'] = l$send?.map((e) => e.toJson()).toList();
    final l$recieve = recieve;
    _resultData['recieve'] = l$recieve?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$send = send;
    final l$recieve = recieve;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$send == null ? null : Object.hashAll(l$send.map((v) => v)),
      l$recieve == null ? null : Object.hashAll(l$recieve.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ChatUser$user) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$send = send;
    final lOther$send = other.send;
    if (l$send != null && lOther$send != null) {
      if (l$send.length != lOther$send.length) {
        return false;
      }
      for (int i = 0; i < l$send.length; i++) {
        final l$send$entry = l$send[i];
        final lOther$send$entry = lOther$send[i];
        if (l$send$entry != lOther$send$entry) {
          return false;
        }
      }
    } else if (l$send != lOther$send) {
      return false;
    }
    final l$recieve = recieve;
    final lOther$recieve = other.recieve;
    if (l$recieve != null && lOther$recieve != null) {
      if (l$recieve.length != lOther$recieve.length) {
        return false;
      }
      for (int i = 0; i < l$recieve.length; i++) {
        final l$recieve$entry = l$recieve[i];
        final lOther$recieve$entry = lOther$recieve[i];
        if (l$recieve$entry != lOther$recieve$entry) {
          return false;
        }
      }
    } else if (l$recieve != lOther$recieve) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ChatUser$user on Query$ChatUser$user {
  CopyWith$Query$ChatUser$user<Query$ChatUser$user> get copyWith =>
      CopyWith$Query$ChatUser$user(this, (i) => i);
}

abstract class CopyWith$Query$ChatUser$user<TRes> {
  factory CopyWith$Query$ChatUser$user(Query$ChatUser$user instance,
          TRes Function(Query$ChatUser$user) then) =
      _CopyWithImpl$Query$ChatUser$user;

  factory CopyWith$Query$ChatUser$user.stub(TRes res) =
      _CopyWithStubImpl$Query$ChatUser$user;

  TRes call(
      {List<Fragment$ChatSummary>? send,
      List<Fragment$ChatSummary>? recieve,
      String? $__typename});
  TRes send(
      Iterable<Fragment$ChatSummary>? Function(
              Iterable<CopyWith$Fragment$ChatSummary<Fragment$ChatSummary>>?)
          _fn);
  TRes recieve(
      Iterable<Fragment$ChatSummary>? Function(
              Iterable<CopyWith$Fragment$ChatSummary<Fragment$ChatSummary>>?)
          _fn);
}

class _CopyWithImpl$Query$ChatUser$user<TRes>
    implements CopyWith$Query$ChatUser$user<TRes> {
  _CopyWithImpl$Query$ChatUser$user(this._instance, this._then);

  final Query$ChatUser$user _instance;

  final TRes Function(Query$ChatUser$user) _then;

  static const _undefined = {};

  TRes call(
          {Object? send = _undefined,
          Object? recieve = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$ChatUser$user(
          send: send == _undefined
              ? _instance.send
              : (send as List<Fragment$ChatSummary>?),
          recieve: recieve == _undefined
              ? _instance.recieve
              : (recieve as List<Fragment$ChatSummary>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes send(
          Iterable<Fragment$ChatSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$ChatSummary<Fragment$ChatSummary>>?)
              _fn) =>
      call(
          send: _fn(_instance.send
                  ?.map((e) => CopyWith$Fragment$ChatSummary(e, (i) => i)))
              ?.toList());
  TRes recieve(
          Iterable<Fragment$ChatSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$ChatSummary<Fragment$ChatSummary>>?)
              _fn) =>
      call(
          recieve: _fn(_instance.recieve
                  ?.map((e) => CopyWith$Fragment$ChatSummary(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$ChatUser$user<TRes>
    implements CopyWith$Query$ChatUser$user<TRes> {
  _CopyWithStubImpl$Query$ChatUser$user(this._res);

  TRes _res;

  call(
          {List<Fragment$ChatSummary>? send,
          List<Fragment$ChatSummary>? recieve,
          String? $__typename}) =>
      _res;
  send(_fn) => _res;
  recieve(_fn) => _res;
}

class Variables$Mutation$ChatSend {
  factory Variables$Mutation$ChatSend({required Input$ChatInfo info}) =>
      Variables$Mutation$ChatSend._({
        r'info': info,
      });

  Variables$Mutation$ChatSend._(this._$data);

  factory Variables$Mutation$ChatSend.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$info = data['info'];
    result$data['info'] =
        Input$ChatInfo.fromJson((l$info as Map<String, dynamic>));
    return Variables$Mutation$ChatSend._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChatInfo get info => (_$data['info'] as Input$ChatInfo);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$info = info;
    result$data['info'] = l$info.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ChatSend<Variables$Mutation$ChatSend>
      get copyWith => CopyWith$Variables$Mutation$ChatSend(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ChatSend) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$info = info;
    return Object.hashAll([l$info]);
  }
}

abstract class CopyWith$Variables$Mutation$ChatSend<TRes> {
  factory CopyWith$Variables$Mutation$ChatSend(
          Variables$Mutation$ChatSend instance,
          TRes Function(Variables$Mutation$ChatSend) then) =
      _CopyWithImpl$Variables$Mutation$ChatSend;

  factory CopyWith$Variables$Mutation$ChatSend.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ChatSend;

  TRes call({Input$ChatInfo? info});
}

class _CopyWithImpl$Variables$Mutation$ChatSend<TRes>
    implements CopyWith$Variables$Mutation$ChatSend<TRes> {
  _CopyWithImpl$Variables$Mutation$ChatSend(this._instance, this._then);

  final Variables$Mutation$ChatSend _instance;

  final TRes Function(Variables$Mutation$ChatSend) _then;

  static const _undefined = {};

  TRes call({Object? info = _undefined}) =>
      _then(Variables$Mutation$ChatSend._({
        ..._instance._$data,
        if (info != _undefined && info != null)
          'info': (info as Input$ChatInfo),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ChatSend<TRes>
    implements CopyWith$Variables$Mutation$ChatSend<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ChatSend(this._res);

  TRes _res;

  call({Input$ChatInfo? info}) => _res;
}

class Mutation$ChatSend {
  Mutation$ChatSend({this.chatSend, required this.$__typename});

  factory Mutation$ChatSend.fromJson(Map<String, dynamic> json) {
    final l$chatSend = json['chatSend'];
    final l$$__typename = json['__typename'];
    return Mutation$ChatSend(
        chatSend: l$chatSend == null
            ? null
            : Fragment$ChatSummary.fromJson(
                (l$chatSend as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Fragment$ChatSummary? chatSend;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$chatSend = chatSend;
    _resultData['chatSend'] = l$chatSend?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$chatSend = chatSend;
    final l$$__typename = $__typename;
    return Object.hashAll([l$chatSend, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ChatSend) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$chatSend = chatSend;
    final lOther$chatSend = other.chatSend;
    if (l$chatSend != lOther$chatSend) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ChatSend on Mutation$ChatSend {
  CopyWith$Mutation$ChatSend<Mutation$ChatSend> get copyWith =>
      CopyWith$Mutation$ChatSend(this, (i) => i);
}

abstract class CopyWith$Mutation$ChatSend<TRes> {
  factory CopyWith$Mutation$ChatSend(
          Mutation$ChatSend instance, TRes Function(Mutation$ChatSend) then) =
      _CopyWithImpl$Mutation$ChatSend;

  factory CopyWith$Mutation$ChatSend.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChatSend;

  TRes call({Fragment$ChatSummary? chatSend, String? $__typename});
  CopyWith$Fragment$ChatSummary<TRes> get chatSend;
}

class _CopyWithImpl$Mutation$ChatSend<TRes>
    implements CopyWith$Mutation$ChatSend<TRes> {
  _CopyWithImpl$Mutation$ChatSend(this._instance, this._then);

  final Mutation$ChatSend _instance;

  final TRes Function(Mutation$ChatSend) _then;

  static const _undefined = {};

  TRes call(
          {Object? chatSend = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$ChatSend(
          chatSend: chatSend == _undefined
              ? _instance.chatSend
              : (chatSend as Fragment$ChatSummary?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$ChatSummary<TRes> get chatSend {
    final local$chatSend = _instance.chatSend;
    return local$chatSend == null
        ? CopyWith$Fragment$ChatSummary.stub(_then(_instance))
        : CopyWith$Fragment$ChatSummary(
            local$chatSend, (e) => call(chatSend: e));
  }
}

class _CopyWithStubImpl$Mutation$ChatSend<TRes>
    implements CopyWith$Mutation$ChatSend<TRes> {
  _CopyWithStubImpl$Mutation$ChatSend(this._res);

  TRes _res;

  call({Fragment$ChatSummary? chatSend, String? $__typename}) => _res;
  CopyWith$Fragment$ChatSummary<TRes> get chatSend =>
      CopyWith$Fragment$ChatSummary.stub(_res);
}

const documentNodeMutationChatSend = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ChatSend'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'info')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatInfo'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chatSend'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'info'),
                  value: VariableNode(name: NameNode(value: 'info')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'ChatSummary'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionChatSummary,
  fragmentDefinitionUserSummary,
]);
Mutation$ChatSend _parserFn$Mutation$ChatSend(Map<String, dynamic> data) =>
    Mutation$ChatSend.fromJson(data);
typedef OnMutationCompleted$Mutation$ChatSend = FutureOr<void> Function(
    dynamic, Mutation$ChatSend?);

class Options$Mutation$ChatSend
    extends graphql.MutationOptions<Mutation$ChatSend> {
  Options$Mutation$ChatSend(
      {String? operationName,
      required Variables$Mutation$ChatSend variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$ChatSend? onCompleted,
      graphql.OnMutationUpdate<Mutation$ChatSend>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$ChatSend(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationChatSend,
            parserFn: _parserFn$Mutation$ChatSend);

  final OnMutationCompleted$Mutation$ChatSend? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$ChatSend
    extends graphql.WatchQueryOptions<Mutation$ChatSend> {
  WatchOptions$Mutation$ChatSend(
      {String? operationName,
      required Variables$Mutation$ChatSend variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationChatSend,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$ChatSend);
}

extension ClientExtension$Mutation$ChatSend on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ChatSend>> mutate$ChatSend(
          Options$Mutation$ChatSend options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ChatSend> watchMutation$ChatSend(
          WatchOptions$Mutation$ChatSend options) =>
      this.watchMutation(options);
}

class Mutation$ChatSend$HookResult {
  Mutation$ChatSend$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ChatSend runMutation;

  final graphql.QueryResult<Mutation$ChatSend> result;
}

Mutation$ChatSend$HookResult useMutation$ChatSend(
    [WidgetOptions$Mutation$ChatSend? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$ChatSend());
  return Mutation$ChatSend$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ChatSend> useWatchMutation$ChatSend(
        WatchOptions$Mutation$ChatSend options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ChatSend
    extends graphql.MutationOptions<Mutation$ChatSend> {
  WidgetOptions$Mutation$ChatSend(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$ChatSend? onCompleted,
      graphql.OnMutationUpdate<Mutation$ChatSend>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$ChatSend(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationChatSend,
            parserFn: _parserFn$Mutation$ChatSend);

  final OnMutationCompleted$Mutation$ChatSend? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$ChatSend
    = graphql.MultiSourceResult<Mutation$ChatSend>
        Function(Variables$Mutation$ChatSend, {Object? optimisticResult});
typedef Builder$Mutation$ChatSend = widgets.Widget Function(
    RunMutation$Mutation$ChatSend, graphql.QueryResult<Mutation$ChatSend>?);

class Mutation$ChatSend$Widget
    extends graphql_flutter.Mutation<Mutation$ChatSend> {
  Mutation$ChatSend$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$ChatSend? options,
      required Builder$Mutation$ChatSend builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$ChatSend(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Variables$Mutation$ChatDelete {
  factory Variables$Mutation$ChatDelete({required String chatKey}) =>
      Variables$Mutation$ChatDelete._({
        r'chatKey': chatKey,
      });

  Variables$Mutation$ChatDelete._(this._$data);

  factory Variables$Mutation$ChatDelete.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$chatKey = data['chatKey'];
    result$data['chatKey'] = (l$chatKey as String);
    return Variables$Mutation$ChatDelete._(result$data);
  }

  Map<String, dynamic> _$data;

  String get chatKey => (_$data['chatKey'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$chatKey = chatKey;
    result$data['chatKey'] = l$chatKey;
    return result$data;
  }

  CopyWith$Variables$Mutation$ChatDelete<Variables$Mutation$ChatDelete>
      get copyWith => CopyWith$Variables$Mutation$ChatDelete(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ChatDelete) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$chatKey = chatKey;
    final lOther$chatKey = other.chatKey;
    if (l$chatKey != lOther$chatKey) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$chatKey = chatKey;
    return Object.hashAll([l$chatKey]);
  }
}

abstract class CopyWith$Variables$Mutation$ChatDelete<TRes> {
  factory CopyWith$Variables$Mutation$ChatDelete(
          Variables$Mutation$ChatDelete instance,
          TRes Function(Variables$Mutation$ChatDelete) then) =
      _CopyWithImpl$Variables$Mutation$ChatDelete;

  factory CopyWith$Variables$Mutation$ChatDelete.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ChatDelete;

  TRes call({String? chatKey});
}

class _CopyWithImpl$Variables$Mutation$ChatDelete<TRes>
    implements CopyWith$Variables$Mutation$ChatDelete<TRes> {
  _CopyWithImpl$Variables$Mutation$ChatDelete(this._instance, this._then);

  final Variables$Mutation$ChatDelete _instance;

  final TRes Function(Variables$Mutation$ChatDelete) _then;

  static const _undefined = {};

  TRes call({Object? chatKey = _undefined}) =>
      _then(Variables$Mutation$ChatDelete._({
        ..._instance._$data,
        if (chatKey != _undefined && chatKey != null)
          'chatKey': (chatKey as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ChatDelete<TRes>
    implements CopyWith$Variables$Mutation$ChatDelete<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ChatDelete(this._res);

  TRes _res;

  call({String? chatKey}) => _res;
}

class Mutation$ChatDelete {
  Mutation$ChatDelete({this.chatDelete, required this.$__typename});

  factory Mutation$ChatDelete.fromJson(Map<String, dynamic> json) {
    final l$chatDelete = json['chatDelete'];
    final l$$__typename = json['__typename'];
    return Mutation$ChatDelete(
        chatDelete: (l$chatDelete as int?),
        $__typename: (l$$__typename as String));
  }

  final int? chatDelete;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$chatDelete = chatDelete;
    _resultData['chatDelete'] = l$chatDelete;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$chatDelete = chatDelete;
    final l$$__typename = $__typename;
    return Object.hashAll([l$chatDelete, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ChatDelete) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$chatDelete = chatDelete;
    final lOther$chatDelete = other.chatDelete;
    if (l$chatDelete != lOther$chatDelete) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ChatDelete on Mutation$ChatDelete {
  CopyWith$Mutation$ChatDelete<Mutation$ChatDelete> get copyWith =>
      CopyWith$Mutation$ChatDelete(this, (i) => i);
}

abstract class CopyWith$Mutation$ChatDelete<TRes> {
  factory CopyWith$Mutation$ChatDelete(Mutation$ChatDelete instance,
          TRes Function(Mutation$ChatDelete) then) =
      _CopyWithImpl$Mutation$ChatDelete;

  factory CopyWith$Mutation$ChatDelete.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChatDelete;

  TRes call({int? chatDelete, String? $__typename});
}

class _CopyWithImpl$Mutation$ChatDelete<TRes>
    implements CopyWith$Mutation$ChatDelete<TRes> {
  _CopyWithImpl$Mutation$ChatDelete(this._instance, this._then);

  final Mutation$ChatDelete _instance;

  final TRes Function(Mutation$ChatDelete) _then;

  static const _undefined = {};

  TRes call(
          {Object? chatDelete = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$ChatDelete(
          chatDelete: chatDelete == _undefined
              ? _instance.chatDelete
              : (chatDelete as int?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ChatDelete<TRes>
    implements CopyWith$Mutation$ChatDelete<TRes> {
  _CopyWithStubImpl$Mutation$ChatDelete(this._res);

  TRes _res;

  call({int? chatDelete, String? $__typename}) => _res;
}

const documentNodeMutationChatDelete = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ChatDelete'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'chatKey')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chatDelete'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'chatKey'),
                  value: VariableNode(name: NameNode(value: 'chatKey')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'ChatSummary'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Mutation$ChatDelete _parserFn$Mutation$ChatDelete(Map<String, dynamic> data) =>
    Mutation$ChatDelete.fromJson(data);
typedef OnMutationCompleted$Mutation$ChatDelete = FutureOr<void> Function(
    dynamic, Mutation$ChatDelete?);

class Options$Mutation$ChatDelete
    extends graphql.MutationOptions<Mutation$ChatDelete> {
  Options$Mutation$ChatDelete(
      {String? operationName,
      required Variables$Mutation$ChatDelete variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$ChatDelete? onCompleted,
      graphql.OnMutationUpdate<Mutation$ChatDelete>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$ChatDelete(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationChatDelete,
            parserFn: _parserFn$Mutation$ChatDelete);

  final OnMutationCompleted$Mutation$ChatDelete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$ChatDelete
    extends graphql.WatchQueryOptions<Mutation$ChatDelete> {
  WatchOptions$Mutation$ChatDelete(
      {String? operationName,
      required Variables$Mutation$ChatDelete variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationChatDelete,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$ChatDelete);
}

extension ClientExtension$Mutation$ChatDelete on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ChatDelete>> mutate$ChatDelete(
          Options$Mutation$ChatDelete options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ChatDelete> watchMutation$ChatDelete(
          WatchOptions$Mutation$ChatDelete options) =>
      this.watchMutation(options);
}

class Mutation$ChatDelete$HookResult {
  Mutation$ChatDelete$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ChatDelete runMutation;

  final graphql.QueryResult<Mutation$ChatDelete> result;
}

Mutation$ChatDelete$HookResult useMutation$ChatDelete(
    [WidgetOptions$Mutation$ChatDelete? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ChatDelete());
  return Mutation$ChatDelete$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ChatDelete> useWatchMutation$ChatDelete(
        WatchOptions$Mutation$ChatDelete options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ChatDelete
    extends graphql.MutationOptions<Mutation$ChatDelete> {
  WidgetOptions$Mutation$ChatDelete(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$ChatDelete? onCompleted,
      graphql.OnMutationUpdate<Mutation$ChatDelete>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$ChatDelete(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationChatDelete,
            parserFn: _parserFn$Mutation$ChatDelete);

  final OnMutationCompleted$Mutation$ChatDelete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$ChatDelete
    = graphql.MultiSourceResult<Mutation$ChatDelete>
        Function(Variables$Mutation$ChatDelete, {Object? optimisticResult});
typedef Builder$Mutation$ChatDelete = widgets.Widget Function(
    RunMutation$Mutation$ChatDelete, graphql.QueryResult<Mutation$ChatDelete>?);

class Mutation$ChatDelete$Widget
    extends graphql_flutter.Mutation<Mutation$ChatDelete> {
  Mutation$ChatDelete$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$ChatDelete? options,
      required Builder$Mutation$ChatDelete builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$ChatDelete(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Subscription$ChatSend {
  Subscription$ChatSend({this.chatSend});

  factory Subscription$ChatSend.fromJson(Map<String, dynamic> json) {
    final l$chatSend = json['chatSend'];
    return Subscription$ChatSend(
        chatSend: l$chatSend == null
            ? null
            : Fragment$ChatSummary.fromJson(
                (l$chatSend as Map<String, dynamic>)));
  }

  final Fragment$ChatSummary? chatSend;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$chatSend = chatSend;
    _resultData['chatSend'] = l$chatSend?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$chatSend = chatSend;
    return Object.hashAll([l$chatSend]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ChatSend) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$chatSend = chatSend;
    final lOther$chatSend = other.chatSend;
    if (l$chatSend != lOther$chatSend) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ChatSend on Subscription$ChatSend {
  CopyWith$Subscription$ChatSend<Subscription$ChatSend> get copyWith =>
      CopyWith$Subscription$ChatSend(this, (i) => i);
}

abstract class CopyWith$Subscription$ChatSend<TRes> {
  factory CopyWith$Subscription$ChatSend(Subscription$ChatSend instance,
          TRes Function(Subscription$ChatSend) then) =
      _CopyWithImpl$Subscription$ChatSend;

  factory CopyWith$Subscription$ChatSend.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ChatSend;

  TRes call({Fragment$ChatSummary? chatSend});
  CopyWith$Fragment$ChatSummary<TRes> get chatSend;
}

class _CopyWithImpl$Subscription$ChatSend<TRes>
    implements CopyWith$Subscription$ChatSend<TRes> {
  _CopyWithImpl$Subscription$ChatSend(this._instance, this._then);

  final Subscription$ChatSend _instance;

  final TRes Function(Subscription$ChatSend) _then;

  static const _undefined = {};

  TRes call({Object? chatSend = _undefined}) => _then(Subscription$ChatSend(
      chatSend: chatSend == _undefined
          ? _instance.chatSend
          : (chatSend as Fragment$ChatSummary?)));
  CopyWith$Fragment$ChatSummary<TRes> get chatSend {
    final local$chatSend = _instance.chatSend;
    return local$chatSend == null
        ? CopyWith$Fragment$ChatSummary.stub(_then(_instance))
        : CopyWith$Fragment$ChatSummary(
            local$chatSend, (e) => call(chatSend: e));
  }
}

class _CopyWithStubImpl$Subscription$ChatSend<TRes>
    implements CopyWith$Subscription$ChatSend<TRes> {
  _CopyWithStubImpl$Subscription$ChatSend(this._res);

  TRes _res;

  call({Fragment$ChatSummary? chatSend}) => _res;
  CopyWith$Fragment$ChatSummary<TRes> get chatSend =>
      CopyWith$Fragment$ChatSummary.stub(_res);
}

const documentNodeSubscriptionChatSend = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'ChatSend'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chatSend'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'ChatSummary'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
  fragmentDefinitionChatSummary,
  fragmentDefinitionUserSummary,
]);
Subscription$ChatSend _parserFn$Subscription$ChatSend(
        Map<String, dynamic> data) =>
    Subscription$ChatSend.fromJson(data);

class Options$Subscription$ChatSend
    extends graphql.SubscriptionOptions<Subscription$ChatSend> {
  Options$Subscription$ChatSend(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeSubscriptionChatSend,
            parserFn: _parserFn$Subscription$ChatSend);
}

class WatchOptions$Subscription$ChatSend
    extends graphql.WatchQueryOptions<Subscription$ChatSend> {
  WatchOptions$Subscription$ChatSend(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeSubscriptionChatSend,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Subscription$ChatSend);
}

class FetchMoreOptions$Subscription$ChatSend extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$ChatSend(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeSubscriptionChatSend);
}

extension ClientExtension$Subscription$ChatSend on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$ChatSend>> subscribe$ChatSend(
          [Options$Subscription$ChatSend? options]) =>
      this.subscribe(options ?? Options$Subscription$ChatSend());
  graphql.ObservableQuery<Subscription$ChatSend> watchSubscription$ChatSend(
          [WatchOptions$Subscription$ChatSend? options]) =>
      this.watchQuery(options ?? WatchOptions$Subscription$ChatSend());
}

graphql.QueryResult<Subscription$ChatSend> useSubscription$ChatSend(
        Options$Subscription$ChatSend options) =>
    graphql_flutter.useSubscription(options);

class Subscription$ChatSend$Widget
    extends graphql_flutter.Subscription<Subscription$ChatSend> {
  Subscription$ChatSend$Widget(
      {widgets.Key? key,
      Options$Subscription$ChatSend? options,
      required graphql_flutter.SubscriptionBuilder<Subscription$ChatSend>
          builder,
      graphql_flutter.OnSubscriptionResult<Subscription$ChatSend>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options ?? Options$Subscription$ChatSend(),
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}
