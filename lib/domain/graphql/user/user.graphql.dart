import '../schema/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$UserSummary {
  Fragment$UserSummary(
      {required this.key, required this.name, required this.$__typename});

  factory Fragment$UserSummary.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$UserSummary(
        key: (l$key as String),
        name: (l$name as String),
        $__typename: (l$$__typename as String));
  }

  final String key;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserSummary) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$UserSummary on Fragment$UserSummary {
  CopyWith$Fragment$UserSummary<Fragment$UserSummary> get copyWith =>
      CopyWith$Fragment$UserSummary(this, (i) => i);
}

abstract class CopyWith$Fragment$UserSummary<TRes> {
  factory CopyWith$Fragment$UserSummary(Fragment$UserSummary instance,
          TRes Function(Fragment$UserSummary) then) =
      _CopyWithImpl$Fragment$UserSummary;

  factory CopyWith$Fragment$UserSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserSummary;

  TRes call({String? key, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$UserSummary<TRes>
    implements CopyWith$Fragment$UserSummary<TRes> {
  _CopyWithImpl$Fragment$UserSummary(this._instance, this._then);

  final Fragment$UserSummary _instance;

  final TRes Function(Fragment$UserSummary) _then;

  static const _undefined = {};

  TRes call(
          {Object? key = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$UserSummary(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$UserSummary<TRes>
    implements CopyWith$Fragment$UserSummary<TRes> {
  _CopyWithStubImpl$Fragment$UserSummary(this._res);

  TRes _res;

  call({String? key, String? name, String? $__typename}) => _res;
}

const fragmentDefinitionUserSummary = FragmentDefinitionNode(
    name: NameNode(value: 'UserSummary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'key'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentUserSummary = DocumentNode(definitions: [
  fragmentDefinitionUserSummary,
]);

extension ClientExtension$Fragment$UserSummary on graphql.GraphQLClient {
  void writeFragment$UserSummary(
          {required Fragment$UserSummary data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'UserSummary',
                  document: documentNodeFragmentUserSummary)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$UserSummary? readFragment$UserSummary(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'UserSummary',
                document: documentNodeFragmentUserSummary)),
        optimistic: optimistic);
    return result == null ? null : Fragment$UserSummary.fromJson(result);
  }
}

class Variables$Query$User {
  factory Variables$Query$User({required String userKey}) =>
      Variables$Query$User._({
        r'userKey': userKey,
      });

  Variables$Query$User._(this._$data);

  factory Variables$Query$User.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userKey = data['userKey'];
    result$data['userKey'] = (l$userKey as String);
    return Variables$Query$User._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userKey => (_$data['userKey'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userKey = userKey;
    result$data['userKey'] = l$userKey;
    return result$data;
  }

  CopyWith$Variables$Query$User<Variables$Query$User> get copyWith =>
      CopyWith$Variables$Query$User(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$User) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$User<TRes> {
  factory CopyWith$Variables$Query$User(Variables$Query$User instance,
          TRes Function(Variables$Query$User) then) =
      _CopyWithImpl$Variables$Query$User;

  factory CopyWith$Variables$Query$User.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$User;

  TRes call({String? userKey});
}

class _CopyWithImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithImpl$Variables$Query$User(this._instance, this._then);

  final Variables$Query$User _instance;

  final TRes Function(Variables$Query$User) _then;

  static const _undefined = {};

  TRes call({Object? userKey = _undefined}) => _then(Variables$Query$User._({
        ..._instance._$data,
        if (userKey != _undefined && userKey != null)
          'userKey': (userKey as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithStubImpl$Variables$Query$User(this._res);

  TRes _res;

  call({String? userKey}) => _res;
}

class Query$User {
  Query$User({this.user, required this.$__typename});

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$User(
        user: l$user == null
            ? null
            : Query$User$user.fromJson((l$user as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$User$user? user;

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
    if (!(other is Query$User) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$User on Query$User {
  CopyWith$Query$User<Query$User> get copyWith =>
      CopyWith$Query$User(this, (i) => i);
}

abstract class CopyWith$Query$User<TRes> {
  factory CopyWith$Query$User(
          Query$User instance, TRes Function(Query$User) then) =
      _CopyWithImpl$Query$User;

  factory CopyWith$Query$User.stub(TRes res) = _CopyWithStubImpl$Query$User;

  TRes call({Query$User$user? user, String? $__typename});
  CopyWith$Query$User$user<TRes> get user;
}

class _CopyWithImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithImpl$Query$User(this._instance, this._then);

  final Query$User _instance;

  final TRes Function(Query$User) _then;

  static const _undefined = {};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$User(
          user:
              user == _undefined ? _instance.user : (user as Query$User$user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$User$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$User$user.stub(_then(_instance))
        : CopyWith$Query$User$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({Query$User$user? user, String? $__typename}) => _res;
  CopyWith$Query$User$user<TRes> get user =>
      CopyWith$Query$User$user.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'User'),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'UserSummary'), directives: []),
              FieldNode(
                  name: NameNode(value: 'followBy'),
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
                  name: NameNode(value: 'following'),
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
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionUserSummary,
]);
Query$User _parserFn$Query$User(Map<String, dynamic> data) =>
    Query$User.fromJson(data);

class Options$Query$User extends graphql.QueryOptions<Query$User> {
  Options$Query$User(
      {String? operationName,
      required Variables$Query$User variables,
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
            document: documentNodeQueryUser,
            parserFn: _parserFn$Query$User);
}

class WatchOptions$Query$User extends graphql.WatchQueryOptions<Query$User> {
  WatchOptions$Query$User(
      {String? operationName,
      required Variables$Query$User variables,
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
            document: documentNodeQueryUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$User);
}

class FetchMoreOptions$Query$User extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$User(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$User variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryUser);
}

extension ClientExtension$Query$User on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$User>> query$User(
          Options$Query$User options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$User> watchQuery$User(
          WatchOptions$Query$User options) =>
      this.watchQuery(options);
  void writeQuery$User(
          {required Query$User data,
          required Variables$Query$User variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryUser),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$User? readQuery$User(
      {required Variables$Query$User variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryUser),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$User.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$User> useQuery$User(
        Options$Query$User options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$User> useWatchQuery$User(
        WatchOptions$Query$User options) =>
    graphql_flutter.useWatchQuery(options);

class Query$User$Widget extends graphql_flutter.Query<Query$User> {
  Query$User$Widget(
      {widgets.Key? key,
      required Options$Query$User options,
      required graphql_flutter.QueryBuilder<Query$User> builder})
      : super(key: key, options: options, builder: builder);
}

class Query$User$user implements Fragment$UserSummary {
  Query$User$user(
      {required this.key,
      required this.name,
      required this.$__typename,
      this.followBy,
      this.following});

  factory Query$User$user.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$followBy = json['followBy'];
    final l$following = json['following'];
    return Query$User$user(
        key: (l$key as String),
        name: (l$name as String),
        $__typename: (l$$__typename as String),
        followBy: (l$followBy as List<dynamic>?)
            ?.map((e) =>
                Fragment$UserSummary.fromJson((e as Map<String, dynamic>)))
            .toList(),
        following: (l$following as List<dynamic>?)
            ?.map((e) =>
                Fragment$UserSummary.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final String key;

  final String name;

  final String $__typename;

  final List<Fragment$UserSummary>? followBy;

  final List<Fragment$UserSummary>? following;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$followBy = followBy;
    _resultData['followBy'] = l$followBy?.map((e) => e.toJson()).toList();
    final l$following = following;
    _resultData['following'] = l$following?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$name = name;
    final l$$__typename = $__typename;
    final l$followBy = followBy;
    final l$following = following;
    return Object.hashAll([
      l$key,
      l$name,
      l$$__typename,
      l$followBy == null ? null : Object.hashAll(l$followBy.map((v) => v)),
      l$following == null ? null : Object.hashAll(l$following.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User$user) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$followBy = followBy;
    final lOther$followBy = other.followBy;
    if (l$followBy != null && lOther$followBy != null) {
      if (l$followBy.length != lOther$followBy.length) {
        return false;
      }
      for (int i = 0; i < l$followBy.length; i++) {
        final l$followBy$entry = l$followBy[i];
        final lOther$followBy$entry = lOther$followBy[i];
        if (l$followBy$entry != lOther$followBy$entry) {
          return false;
        }
      }
    } else if (l$followBy != lOther$followBy) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != null && lOther$following != null) {
      if (l$following.length != lOther$following.length) {
        return false;
      }
      for (int i = 0; i < l$following.length; i++) {
        final l$following$entry = l$following[i];
        final lOther$following$entry = lOther$following[i];
        if (l$following$entry != lOther$following$entry) {
          return false;
        }
      }
    } else if (l$following != lOther$following) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$User$user on Query$User$user {
  CopyWith$Query$User$user<Query$User$user> get copyWith =>
      CopyWith$Query$User$user(this, (i) => i);
}

abstract class CopyWith$Query$User$user<TRes> {
  factory CopyWith$Query$User$user(
          Query$User$user instance, TRes Function(Query$User$user) then) =
      _CopyWithImpl$Query$User$user;

  factory CopyWith$Query$User$user.stub(TRes res) =
      _CopyWithStubImpl$Query$User$user;

  TRes call(
      {String? key,
      String? name,
      String? $__typename,
      List<Fragment$UserSummary>? followBy,
      List<Fragment$UserSummary>? following});
  TRes followBy(
      Iterable<Fragment$UserSummary>? Function(
              Iterable<CopyWith$Fragment$UserSummary<Fragment$UserSummary>>?)
          _fn);
  TRes following(
      Iterable<Fragment$UserSummary>? Function(
              Iterable<CopyWith$Fragment$UserSummary<Fragment$UserSummary>>?)
          _fn);
}

class _CopyWithImpl$Query$User$user<TRes>
    implements CopyWith$Query$User$user<TRes> {
  _CopyWithImpl$Query$User$user(this._instance, this._then);

  final Query$User$user _instance;

  final TRes Function(Query$User$user) _then;

  static const _undefined = {};

  TRes call(
          {Object? key = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined,
          Object? followBy = _undefined,
          Object? following = _undefined}) =>
      _then(Query$User$user(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          followBy: followBy == _undefined
              ? _instance.followBy
              : (followBy as List<Fragment$UserSummary>?),
          following: following == _undefined
              ? _instance.following
              : (following as List<Fragment$UserSummary>?)));
  TRes followBy(
          Iterable<Fragment$UserSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$UserSummary<Fragment$UserSummary>>?)
              _fn) =>
      call(
          followBy: _fn(_instance.followBy
                  ?.map((e) => CopyWith$Fragment$UserSummary(e, (i) => i)))
              ?.toList());
  TRes following(
          Iterable<Fragment$UserSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$UserSummary<Fragment$UserSummary>>?)
              _fn) =>
      call(
          following: _fn(_instance.following
                  ?.map((e) => CopyWith$Fragment$UserSummary(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$User$user<TRes>
    implements CopyWith$Query$User$user<TRes> {
  _CopyWithStubImpl$Query$User$user(this._res);

  TRes _res;

  call(
          {String? key,
          String? name,
          String? $__typename,
          List<Fragment$UserSummary>? followBy,
          List<Fragment$UserSummary>? following}) =>
      _res;
  followBy(_fn) => _res;
  following(_fn) => _res;
}

class Query$UserAll {
  Query$UserAll({this.userAll, required this.$__typename});

  factory Query$UserAll.fromJson(Map<String, dynamic> json) {
    final l$userAll = json['userAll'];
    final l$$__typename = json['__typename'];
    return Query$UserAll(
        userAll: (l$userAll as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Fragment$UserSummary.fromJson((e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Fragment$UserSummary?>? userAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userAll = userAll;
    _resultData['userAll'] = l$userAll?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userAll = userAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userAll == null ? null : Object.hashAll(l$userAll.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserAll) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userAll = userAll;
    final lOther$userAll = other.userAll;
    if (l$userAll != null && lOther$userAll != null) {
      if (l$userAll.length != lOther$userAll.length) {
        return false;
      }
      for (int i = 0; i < l$userAll.length; i++) {
        final l$userAll$entry = l$userAll[i];
        final lOther$userAll$entry = lOther$userAll[i];
        if (l$userAll$entry != lOther$userAll$entry) {
          return false;
        }
      }
    } else if (l$userAll != lOther$userAll) {
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

extension UtilityExtension$Query$UserAll on Query$UserAll {
  CopyWith$Query$UserAll<Query$UserAll> get copyWith =>
      CopyWith$Query$UserAll(this, (i) => i);
}

abstract class CopyWith$Query$UserAll<TRes> {
  factory CopyWith$Query$UserAll(
          Query$UserAll instance, TRes Function(Query$UserAll) then) =
      _CopyWithImpl$Query$UserAll;

  factory CopyWith$Query$UserAll.stub(TRes res) =
      _CopyWithStubImpl$Query$UserAll;

  TRes call({List<Fragment$UserSummary?>? userAll, String? $__typename});
  TRes userAll(
      Iterable<Fragment$UserSummary?>? Function(
              Iterable<CopyWith$Fragment$UserSummary<Fragment$UserSummary>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserAll<TRes>
    implements CopyWith$Query$UserAll<TRes> {
  _CopyWithImpl$Query$UserAll(this._instance, this._then);

  final Query$UserAll _instance;

  final TRes Function(Query$UserAll) _then;

  static const _undefined = {};

  TRes call({Object? userAll = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$UserAll(
          userAll: userAll == _undefined
              ? _instance.userAll
              : (userAll as List<Fragment$UserSummary?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes userAll(
          Iterable<Fragment$UserSummary?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserSummary<Fragment$UserSummary>?>?)
              _fn) =>
      call(
          userAll: _fn(_instance.userAll?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserSummary(e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$UserAll<TRes>
    implements CopyWith$Query$UserAll<TRes> {
  _CopyWithStubImpl$Query$UserAll(this._res);

  TRes _res;

  call({List<Fragment$UserSummary?>? userAll, String? $__typename}) => _res;
  userAll(_fn) => _res;
}

const documentNodeQueryUserAll = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'UserAll'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'userAll'),
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
      ])),
  fragmentDefinitionUserSummary,
]);
Query$UserAll _parserFn$Query$UserAll(Map<String, dynamic> data) =>
    Query$UserAll.fromJson(data);

class Options$Query$UserAll extends graphql.QueryOptions<Query$UserAll> {
  Options$Query$UserAll(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryUserAll,
            parserFn: _parserFn$Query$UserAll);
}

class WatchOptions$Query$UserAll
    extends graphql.WatchQueryOptions<Query$UserAll> {
  WatchOptions$Query$UserAll(
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
            document: documentNodeQueryUserAll,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$UserAll);
}

class FetchMoreOptions$Query$UserAll extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserAll({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: documentNodeQueryUserAll);
}

extension ClientExtension$Query$UserAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserAll>> query$UserAll(
          [Options$Query$UserAll? options]) async =>
      await this.query(options ?? Options$Query$UserAll());
  graphql.ObservableQuery<Query$UserAll> watchQuery$UserAll(
          [WatchOptions$Query$UserAll? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserAll());
  void writeQuery$UserAll(
          {required Query$UserAll data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryUserAll)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$UserAll? readQuery$UserAll({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryUserAll)),
        optimistic: optimistic);
    return result == null ? null : Query$UserAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserAll> useQuery$UserAll(
        [Options$Query$UserAll? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserAll());
graphql.ObservableQuery<Query$UserAll> useWatchQuery$UserAll(
        [WatchOptions$Query$UserAll? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$UserAll());

class Query$UserAll$Widget extends graphql_flutter.Query<Query$UserAll> {
  Query$UserAll$Widget(
      {widgets.Key? key,
      Options$Query$UserAll? options,
      required graphql_flutter.QueryBuilder<Query$UserAll> builder})
      : super(
            key: key,
            options: options ?? Options$Query$UserAll(),
            builder: builder);
}

class Variables$Mutation$UserSignUp {
  factory Variables$Mutation$UserSignUp({required Input$UserInfo info}) =>
      Variables$Mutation$UserSignUp._({
        r'info': info,
      });

  Variables$Mutation$UserSignUp._(this._$data);

  factory Variables$Mutation$UserSignUp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$info = data['info'];
    result$data['info'] =
        Input$UserInfo.fromJson((l$info as Map<String, dynamic>));
    return Variables$Mutation$UserSignUp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserInfo get info => (_$data['info'] as Input$UserInfo);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$info = info;
    result$data['info'] = l$info.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UserSignUp<Variables$Mutation$UserSignUp>
      get copyWith => CopyWith$Variables$Mutation$UserSignUp(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UserSignUp) ||
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

abstract class CopyWith$Variables$Mutation$UserSignUp<TRes> {
  factory CopyWith$Variables$Mutation$UserSignUp(
          Variables$Mutation$UserSignUp instance,
          TRes Function(Variables$Mutation$UserSignUp) then) =
      _CopyWithImpl$Variables$Mutation$UserSignUp;

  factory CopyWith$Variables$Mutation$UserSignUp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UserSignUp;

  TRes call({Input$UserInfo? info});
}

class _CopyWithImpl$Variables$Mutation$UserSignUp<TRes>
    implements CopyWith$Variables$Mutation$UserSignUp<TRes> {
  _CopyWithImpl$Variables$Mutation$UserSignUp(this._instance, this._then);

  final Variables$Mutation$UserSignUp _instance;

  final TRes Function(Variables$Mutation$UserSignUp) _then;

  static const _undefined = {};

  TRes call({Object? info = _undefined}) =>
      _then(Variables$Mutation$UserSignUp._({
        ..._instance._$data,
        if (info != _undefined && info != null)
          'info': (info as Input$UserInfo),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UserSignUp<TRes>
    implements CopyWith$Variables$Mutation$UserSignUp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UserSignUp(this._res);

  TRes _res;

  call({Input$UserInfo? info}) => _res;
}

class Mutation$UserSignUp {
  Mutation$UserSignUp({this.userSignUp, required this.$__typename});

  factory Mutation$UserSignUp.fromJson(Map<String, dynamic> json) {
    final l$userSignUp = json['userSignUp'];
    final l$$__typename = json['__typename'];
    return Mutation$UserSignUp(
        userSignUp: l$userSignUp == null
            ? null
            : Mutation$UserSignUp$userSignUp.fromJson(
                (l$userSignUp as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Mutation$UserSignUp$userSignUp? userSignUp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userSignUp = userSignUp;
    _resultData['userSignUp'] = l$userSignUp?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userSignUp = userSignUp;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userSignUp, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserSignUp) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userSignUp = userSignUp;
    final lOther$userSignUp = other.userSignUp;
    if (l$userSignUp != lOther$userSignUp) {
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

extension UtilityExtension$Mutation$UserSignUp on Mutation$UserSignUp {
  CopyWith$Mutation$UserSignUp<Mutation$UserSignUp> get copyWith =>
      CopyWith$Mutation$UserSignUp(this, (i) => i);
}

abstract class CopyWith$Mutation$UserSignUp<TRes> {
  factory CopyWith$Mutation$UserSignUp(Mutation$UserSignUp instance,
          TRes Function(Mutation$UserSignUp) then) =
      _CopyWithImpl$Mutation$UserSignUp;

  factory CopyWith$Mutation$UserSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserSignUp;

  TRes call({Mutation$UserSignUp$userSignUp? userSignUp, String? $__typename});
  CopyWith$Mutation$UserSignUp$userSignUp<TRes> get userSignUp;
}

class _CopyWithImpl$Mutation$UserSignUp<TRes>
    implements CopyWith$Mutation$UserSignUp<TRes> {
  _CopyWithImpl$Mutation$UserSignUp(this._instance, this._then);

  final Mutation$UserSignUp _instance;

  final TRes Function(Mutation$UserSignUp) _then;

  static const _undefined = {};

  TRes call(
          {Object? userSignUp = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UserSignUp(
          userSignUp: userSignUp == _undefined
              ? _instance.userSignUp
              : (userSignUp as Mutation$UserSignUp$userSignUp?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UserSignUp$userSignUp<TRes> get userSignUp {
    final local$userSignUp = _instance.userSignUp;
    return local$userSignUp == null
        ? CopyWith$Mutation$UserSignUp$userSignUp.stub(_then(_instance))
        : CopyWith$Mutation$UserSignUp$userSignUp(
            local$userSignUp, (e) => call(userSignUp: e));
  }
}

class _CopyWithStubImpl$Mutation$UserSignUp<TRes>
    implements CopyWith$Mutation$UserSignUp<TRes> {
  _CopyWithStubImpl$Mutation$UserSignUp(this._res);

  TRes _res;

  call({Mutation$UserSignUp$userSignUp? userSignUp, String? $__typename}) =>
      _res;
  CopyWith$Mutation$UserSignUp$userSignUp<TRes> get userSignUp =>
      CopyWith$Mutation$UserSignUp$userSignUp.stub(_res);
}

const documentNodeMutationUserSignUp = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UserSignUp'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'info')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserInfo'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'userSignUp'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'info'),
                  value: VariableNode(name: NameNode(value: 'info')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'UserSummary'), directives: []),
              FieldNode(
                  name: NameNode(value: 'accessToken'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
  fragmentDefinitionUserSummary,
]);
Mutation$UserSignUp _parserFn$Mutation$UserSignUp(Map<String, dynamic> data) =>
    Mutation$UserSignUp.fromJson(data);
typedef OnMutationCompleted$Mutation$UserSignUp = FutureOr<void> Function(
    dynamic, Mutation$UserSignUp?);

class Options$Mutation$UserSignUp
    extends graphql.MutationOptions<Mutation$UserSignUp> {
  Options$Mutation$UserSignUp(
      {String? operationName,
      required Variables$Mutation$UserSignUp variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UserSignUp? onCompleted,
      graphql.OnMutationUpdate<Mutation$UserSignUp>? update,
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
                    data == null ? null : _parserFn$Mutation$UserSignUp(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUserSignUp,
            parserFn: _parserFn$Mutation$UserSignUp);

  final OnMutationCompleted$Mutation$UserSignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UserSignUp
    extends graphql.WatchQueryOptions<Mutation$UserSignUp> {
  WatchOptions$Mutation$UserSignUp(
      {String? operationName,
      required Variables$Mutation$UserSignUp variables,
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
            document: documentNodeMutationUserSignUp,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UserSignUp);
}

extension ClientExtension$Mutation$UserSignUp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UserSignUp>> mutate$UserSignUp(
          Options$Mutation$UserSignUp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UserSignUp> watchMutation$UserSignUp(
          WatchOptions$Mutation$UserSignUp options) =>
      this.watchMutation(options);
}

class Mutation$UserSignUp$HookResult {
  Mutation$UserSignUp$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UserSignUp runMutation;

  final graphql.QueryResult<Mutation$UserSignUp> result;
}

Mutation$UserSignUp$HookResult useMutation$UserSignUp(
    [WidgetOptions$Mutation$UserSignUp? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UserSignUp());
  return Mutation$UserSignUp$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UserSignUp> useWatchMutation$UserSignUp(
        WatchOptions$Mutation$UserSignUp options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UserSignUp
    extends graphql.MutationOptions<Mutation$UserSignUp> {
  WidgetOptions$Mutation$UserSignUp(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UserSignUp? onCompleted,
      graphql.OnMutationUpdate<Mutation$UserSignUp>? update,
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
                    data == null ? null : _parserFn$Mutation$UserSignUp(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUserSignUp,
            parserFn: _parserFn$Mutation$UserSignUp);

  final OnMutationCompleted$Mutation$UserSignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UserSignUp
    = graphql.MultiSourceResult<Mutation$UserSignUp>
        Function(Variables$Mutation$UserSignUp, {Object? optimisticResult});
typedef Builder$Mutation$UserSignUp = widgets.Widget Function(
    RunMutation$Mutation$UserSignUp, graphql.QueryResult<Mutation$UserSignUp>?);

class Mutation$UserSignUp$Widget
    extends graphql_flutter.Mutation<Mutation$UserSignUp> {
  Mutation$UserSignUp$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UserSignUp? options,
      required Builder$Mutation$UserSignUp builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UserSignUp(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Mutation$UserSignUp$userSignUp implements Fragment$UserSummary {
  Mutation$UserSignUp$userSignUp(
      {required this.key,
      required this.name,
      required this.$__typename,
      this.accessToken});

  factory Mutation$UserSignUp$userSignUp.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$accessToken = json['accessToken'];
    return Mutation$UserSignUp$userSignUp(
        key: (l$key as String),
        name: (l$name as String),
        $__typename: (l$$__typename as String),
        accessToken: (l$accessToken as String?));
  }

  final String key;

  final String name;

  final String $__typename;

  final String? accessToken;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$name = name;
    final l$$__typename = $__typename;
    final l$accessToken = accessToken;
    return Object.hashAll([l$key, l$name, l$$__typename, l$accessToken]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserSignUp$userSignUp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UserSignUp$userSignUp
    on Mutation$UserSignUp$userSignUp {
  CopyWith$Mutation$UserSignUp$userSignUp<Mutation$UserSignUp$userSignUp>
      get copyWith => CopyWith$Mutation$UserSignUp$userSignUp(this, (i) => i);
}

abstract class CopyWith$Mutation$UserSignUp$userSignUp<TRes> {
  factory CopyWith$Mutation$UserSignUp$userSignUp(
          Mutation$UserSignUp$userSignUp instance,
          TRes Function(Mutation$UserSignUp$userSignUp) then) =
      _CopyWithImpl$Mutation$UserSignUp$userSignUp;

  factory CopyWith$Mutation$UserSignUp$userSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserSignUp$userSignUp;

  TRes call(
      {String? key, String? name, String? $__typename, String? accessToken});
}

class _CopyWithImpl$Mutation$UserSignUp$userSignUp<TRes>
    implements CopyWith$Mutation$UserSignUp$userSignUp<TRes> {
  _CopyWithImpl$Mutation$UserSignUp$userSignUp(this._instance, this._then);

  final Mutation$UserSignUp$userSignUp _instance;

  final TRes Function(Mutation$UserSignUp$userSignUp) _then;

  static const _undefined = {};

  TRes call(
          {Object? key = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined,
          Object? accessToken = _undefined}) =>
      _then(Mutation$UserSignUp$userSignUp(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          accessToken: accessToken == _undefined
              ? _instance.accessToken
              : (accessToken as String?)));
}

class _CopyWithStubImpl$Mutation$UserSignUp$userSignUp<TRes>
    implements CopyWith$Mutation$UserSignUp$userSignUp<TRes> {
  _CopyWithStubImpl$Mutation$UserSignUp$userSignUp(this._res);

  TRes _res;

  call({String? key, String? name, String? $__typename, String? accessToken}) =>
      _res;
}

class Variables$Mutation$UserFollow {
  factory Variables$Mutation$UserFollow({required String userKey}) =>
      Variables$Mutation$UserFollow._({
        r'userKey': userKey,
      });

  Variables$Mutation$UserFollow._(this._$data);

  factory Variables$Mutation$UserFollow.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userKey = data['userKey'];
    result$data['userKey'] = (l$userKey as String);
    return Variables$Mutation$UserFollow._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userKey => (_$data['userKey'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userKey = userKey;
    result$data['userKey'] = l$userKey;
    return result$data;
  }

  CopyWith$Variables$Mutation$UserFollow<Variables$Mutation$UserFollow>
      get copyWith => CopyWith$Variables$Mutation$UserFollow(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UserFollow) ||
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

abstract class CopyWith$Variables$Mutation$UserFollow<TRes> {
  factory CopyWith$Variables$Mutation$UserFollow(
          Variables$Mutation$UserFollow instance,
          TRes Function(Variables$Mutation$UserFollow) then) =
      _CopyWithImpl$Variables$Mutation$UserFollow;

  factory CopyWith$Variables$Mutation$UserFollow.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UserFollow;

  TRes call({String? userKey});
}

class _CopyWithImpl$Variables$Mutation$UserFollow<TRes>
    implements CopyWith$Variables$Mutation$UserFollow<TRes> {
  _CopyWithImpl$Variables$Mutation$UserFollow(this._instance, this._then);

  final Variables$Mutation$UserFollow _instance;

  final TRes Function(Variables$Mutation$UserFollow) _then;

  static const _undefined = {};

  TRes call({Object? userKey = _undefined}) =>
      _then(Variables$Mutation$UserFollow._({
        ..._instance._$data,
        if (userKey != _undefined && userKey != null)
          'userKey': (userKey as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UserFollow<TRes>
    implements CopyWith$Variables$Mutation$UserFollow<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UserFollow(this._res);

  TRes _res;

  call({String? userKey}) => _res;
}

class Mutation$UserFollow {
  Mutation$UserFollow({this.userFollow, required this.$__typename});

  factory Mutation$UserFollow.fromJson(Map<String, dynamic> json) {
    final l$userFollow = json['userFollow'];
    final l$$__typename = json['__typename'];
    return Mutation$UserFollow(
        userFollow: l$userFollow == null
            ? null
            : Mutation$UserFollow$userFollow.fromJson(
                (l$userFollow as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Mutation$UserFollow$userFollow? userFollow;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userFollow = userFollow;
    _resultData['userFollow'] = l$userFollow?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userFollow = userFollow;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userFollow, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserFollow) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userFollow = userFollow;
    final lOther$userFollow = other.userFollow;
    if (l$userFollow != lOther$userFollow) {
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

extension UtilityExtension$Mutation$UserFollow on Mutation$UserFollow {
  CopyWith$Mutation$UserFollow<Mutation$UserFollow> get copyWith =>
      CopyWith$Mutation$UserFollow(this, (i) => i);
}

abstract class CopyWith$Mutation$UserFollow<TRes> {
  factory CopyWith$Mutation$UserFollow(Mutation$UserFollow instance,
          TRes Function(Mutation$UserFollow) then) =
      _CopyWithImpl$Mutation$UserFollow;

  factory CopyWith$Mutation$UserFollow.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserFollow;

  TRes call({Mutation$UserFollow$userFollow? userFollow, String? $__typename});
  CopyWith$Mutation$UserFollow$userFollow<TRes> get userFollow;
}

class _CopyWithImpl$Mutation$UserFollow<TRes>
    implements CopyWith$Mutation$UserFollow<TRes> {
  _CopyWithImpl$Mutation$UserFollow(this._instance, this._then);

  final Mutation$UserFollow _instance;

  final TRes Function(Mutation$UserFollow) _then;

  static const _undefined = {};

  TRes call(
          {Object? userFollow = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UserFollow(
          userFollow: userFollow == _undefined
              ? _instance.userFollow
              : (userFollow as Mutation$UserFollow$userFollow?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UserFollow$userFollow<TRes> get userFollow {
    final local$userFollow = _instance.userFollow;
    return local$userFollow == null
        ? CopyWith$Mutation$UserFollow$userFollow.stub(_then(_instance))
        : CopyWith$Mutation$UserFollow$userFollow(
            local$userFollow, (e) => call(userFollow: e));
  }
}

class _CopyWithStubImpl$Mutation$UserFollow<TRes>
    implements CopyWith$Mutation$UserFollow<TRes> {
  _CopyWithStubImpl$Mutation$UserFollow(this._res);

  TRes _res;

  call({Mutation$UserFollow$userFollow? userFollow, String? $__typename}) =>
      _res;
  CopyWith$Mutation$UserFollow$userFollow<TRes> get userFollow =>
      CopyWith$Mutation$UserFollow$userFollow.stub(_res);
}

const documentNodeMutationUserFollow = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UserFollow'),
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
            name: NameNode(value: 'userFollow'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'userKey'),
                  value: VariableNode(name: NameNode(value: 'userKey')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
Mutation$UserFollow _parserFn$Mutation$UserFollow(Map<String, dynamic> data) =>
    Mutation$UserFollow.fromJson(data);
typedef OnMutationCompleted$Mutation$UserFollow = FutureOr<void> Function(
    dynamic, Mutation$UserFollow?);

class Options$Mutation$UserFollow
    extends graphql.MutationOptions<Mutation$UserFollow> {
  Options$Mutation$UserFollow(
      {String? operationName,
      required Variables$Mutation$UserFollow variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UserFollow? onCompleted,
      graphql.OnMutationUpdate<Mutation$UserFollow>? update,
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
                    data == null ? null : _parserFn$Mutation$UserFollow(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUserFollow,
            parserFn: _parserFn$Mutation$UserFollow);

  final OnMutationCompleted$Mutation$UserFollow? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UserFollow
    extends graphql.WatchQueryOptions<Mutation$UserFollow> {
  WatchOptions$Mutation$UserFollow(
      {String? operationName,
      required Variables$Mutation$UserFollow variables,
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
            document: documentNodeMutationUserFollow,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UserFollow);
}

extension ClientExtension$Mutation$UserFollow on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UserFollow>> mutate$UserFollow(
          Options$Mutation$UserFollow options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UserFollow> watchMutation$UserFollow(
          WatchOptions$Mutation$UserFollow options) =>
      this.watchMutation(options);
}

class Mutation$UserFollow$HookResult {
  Mutation$UserFollow$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UserFollow runMutation;

  final graphql.QueryResult<Mutation$UserFollow> result;
}

Mutation$UserFollow$HookResult useMutation$UserFollow(
    [WidgetOptions$Mutation$UserFollow? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UserFollow());
  return Mutation$UserFollow$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UserFollow> useWatchMutation$UserFollow(
        WatchOptions$Mutation$UserFollow options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UserFollow
    extends graphql.MutationOptions<Mutation$UserFollow> {
  WidgetOptions$Mutation$UserFollow(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UserFollow? onCompleted,
      graphql.OnMutationUpdate<Mutation$UserFollow>? update,
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
                    data == null ? null : _parserFn$Mutation$UserFollow(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUserFollow,
            parserFn: _parserFn$Mutation$UserFollow);

  final OnMutationCompleted$Mutation$UserFollow? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UserFollow
    = graphql.MultiSourceResult<Mutation$UserFollow>
        Function(Variables$Mutation$UserFollow, {Object? optimisticResult});
typedef Builder$Mutation$UserFollow = widgets.Widget Function(
    RunMutation$Mutation$UserFollow, graphql.QueryResult<Mutation$UserFollow>?);

class Mutation$UserFollow$Widget
    extends graphql_flutter.Mutation<Mutation$UserFollow> {
  Mutation$UserFollow$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UserFollow? options,
      required Builder$Mutation$UserFollow builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UserFollow(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Mutation$UserFollow$userFollow {
  Mutation$UserFollow$userFollow(
      {required this.key, required this.$__typename});

  factory Mutation$UserFollow$userFollow.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$UserFollow$userFollow(
        key: (l$key as String), $__typename: (l$$__typename as String));
  }

  final String key;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserFollow$userFollow) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Mutation$UserFollow$userFollow
    on Mutation$UserFollow$userFollow {
  CopyWith$Mutation$UserFollow$userFollow<Mutation$UserFollow$userFollow>
      get copyWith => CopyWith$Mutation$UserFollow$userFollow(this, (i) => i);
}

abstract class CopyWith$Mutation$UserFollow$userFollow<TRes> {
  factory CopyWith$Mutation$UserFollow$userFollow(
          Mutation$UserFollow$userFollow instance,
          TRes Function(Mutation$UserFollow$userFollow) then) =
      _CopyWithImpl$Mutation$UserFollow$userFollow;

  factory CopyWith$Mutation$UserFollow$userFollow.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserFollow$userFollow;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$UserFollow$userFollow<TRes>
    implements CopyWith$Mutation$UserFollow$userFollow<TRes> {
  _CopyWithImpl$Mutation$UserFollow$userFollow(this._instance, this._then);

  final Mutation$UserFollow$userFollow _instance;

  final TRes Function(Mutation$UserFollow$userFollow) _then;

  static const _undefined = {};

  TRes call({Object? key = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$UserFollow$userFollow(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UserFollow$userFollow<TRes>
    implements CopyWith$Mutation$UserFollow$userFollow<TRes> {
  _CopyWithStubImpl$Mutation$UserFollow$userFollow(this._res);

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}

class Variables$Mutation$UserUnFollow {
  factory Variables$Mutation$UserUnFollow({required String userKey}) =>
      Variables$Mutation$UserUnFollow._({
        r'userKey': userKey,
      });

  Variables$Mutation$UserUnFollow._(this._$data);

  factory Variables$Mutation$UserUnFollow.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userKey = data['userKey'];
    result$data['userKey'] = (l$userKey as String);
    return Variables$Mutation$UserUnFollow._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userKey => (_$data['userKey'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userKey = userKey;
    result$data['userKey'] = l$userKey;
    return result$data;
  }

  CopyWith$Variables$Mutation$UserUnFollow<Variables$Mutation$UserUnFollow>
      get copyWith => CopyWith$Variables$Mutation$UserUnFollow(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UserUnFollow) ||
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

abstract class CopyWith$Variables$Mutation$UserUnFollow<TRes> {
  factory CopyWith$Variables$Mutation$UserUnFollow(
          Variables$Mutation$UserUnFollow instance,
          TRes Function(Variables$Mutation$UserUnFollow) then) =
      _CopyWithImpl$Variables$Mutation$UserUnFollow;

  factory CopyWith$Variables$Mutation$UserUnFollow.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UserUnFollow;

  TRes call({String? userKey});
}

class _CopyWithImpl$Variables$Mutation$UserUnFollow<TRes>
    implements CopyWith$Variables$Mutation$UserUnFollow<TRes> {
  _CopyWithImpl$Variables$Mutation$UserUnFollow(this._instance, this._then);

  final Variables$Mutation$UserUnFollow _instance;

  final TRes Function(Variables$Mutation$UserUnFollow) _then;

  static const _undefined = {};

  TRes call({Object? userKey = _undefined}) =>
      _then(Variables$Mutation$UserUnFollow._({
        ..._instance._$data,
        if (userKey != _undefined && userKey != null)
          'userKey': (userKey as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UserUnFollow<TRes>
    implements CopyWith$Variables$Mutation$UserUnFollow<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UserUnFollow(this._res);

  TRes _res;

  call({String? userKey}) => _res;
}

class Mutation$UserUnFollow {
  Mutation$UserUnFollow({this.userUnFollow, required this.$__typename});

  factory Mutation$UserUnFollow.fromJson(Map<String, dynamic> json) {
    final l$userUnFollow = json['userUnFollow'];
    final l$$__typename = json['__typename'];
    return Mutation$UserUnFollow(
        userUnFollow: l$userUnFollow == null
            ? null
            : Mutation$UserUnFollow$userUnFollow.fromJson(
                (l$userUnFollow as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Mutation$UserUnFollow$userUnFollow? userUnFollow;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userUnFollow = userUnFollow;
    _resultData['userUnFollow'] = l$userUnFollow?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userUnFollow = userUnFollow;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userUnFollow, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserUnFollow) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userUnFollow = userUnFollow;
    final lOther$userUnFollow = other.userUnFollow;
    if (l$userUnFollow != lOther$userUnFollow) {
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

extension UtilityExtension$Mutation$UserUnFollow on Mutation$UserUnFollow {
  CopyWith$Mutation$UserUnFollow<Mutation$UserUnFollow> get copyWith =>
      CopyWith$Mutation$UserUnFollow(this, (i) => i);
}

abstract class CopyWith$Mutation$UserUnFollow<TRes> {
  factory CopyWith$Mutation$UserUnFollow(Mutation$UserUnFollow instance,
          TRes Function(Mutation$UserUnFollow) then) =
      _CopyWithImpl$Mutation$UserUnFollow;

  factory CopyWith$Mutation$UserUnFollow.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserUnFollow;

  TRes call(
      {Mutation$UserUnFollow$userUnFollow? userUnFollow, String? $__typename});
  CopyWith$Mutation$UserUnFollow$userUnFollow<TRes> get userUnFollow;
}

class _CopyWithImpl$Mutation$UserUnFollow<TRes>
    implements CopyWith$Mutation$UserUnFollow<TRes> {
  _CopyWithImpl$Mutation$UserUnFollow(this._instance, this._then);

  final Mutation$UserUnFollow _instance;

  final TRes Function(Mutation$UserUnFollow) _then;

  static const _undefined = {};

  TRes call(
          {Object? userUnFollow = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UserUnFollow(
          userUnFollow: userUnFollow == _undefined
              ? _instance.userUnFollow
              : (userUnFollow as Mutation$UserUnFollow$userUnFollow?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UserUnFollow$userUnFollow<TRes> get userUnFollow {
    final local$userUnFollow = _instance.userUnFollow;
    return local$userUnFollow == null
        ? CopyWith$Mutation$UserUnFollow$userUnFollow.stub(_then(_instance))
        : CopyWith$Mutation$UserUnFollow$userUnFollow(
            local$userUnFollow, (e) => call(userUnFollow: e));
  }
}

class _CopyWithStubImpl$Mutation$UserUnFollow<TRes>
    implements CopyWith$Mutation$UserUnFollow<TRes> {
  _CopyWithStubImpl$Mutation$UserUnFollow(this._res);

  TRes _res;

  call(
          {Mutation$UserUnFollow$userUnFollow? userUnFollow,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$UserUnFollow$userUnFollow<TRes> get userUnFollow =>
      CopyWith$Mutation$UserUnFollow$userUnFollow.stub(_res);
}

const documentNodeMutationUserUnFollow = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UserUnFollow'),
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
            name: NameNode(value: 'userUnFollow'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'userKey'),
                  value: VariableNode(name: NameNode(value: 'userKey')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
Mutation$UserUnFollow _parserFn$Mutation$UserUnFollow(
        Map<String, dynamic> data) =>
    Mutation$UserUnFollow.fromJson(data);
typedef OnMutationCompleted$Mutation$UserUnFollow = FutureOr<void> Function(
    dynamic, Mutation$UserUnFollow?);

class Options$Mutation$UserUnFollow
    extends graphql.MutationOptions<Mutation$UserUnFollow> {
  Options$Mutation$UserUnFollow(
      {String? operationName,
      required Variables$Mutation$UserUnFollow variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UserUnFollow? onCompleted,
      graphql.OnMutationUpdate<Mutation$UserUnFollow>? update,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UserUnFollow(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUserUnFollow,
            parserFn: _parserFn$Mutation$UserUnFollow);

  final OnMutationCompleted$Mutation$UserUnFollow? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UserUnFollow
    extends graphql.WatchQueryOptions<Mutation$UserUnFollow> {
  WatchOptions$Mutation$UserUnFollow(
      {String? operationName,
      required Variables$Mutation$UserUnFollow variables,
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
            document: documentNodeMutationUserUnFollow,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UserUnFollow);
}

extension ClientExtension$Mutation$UserUnFollow on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UserUnFollow>> mutate$UserUnFollow(
          Options$Mutation$UserUnFollow options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UserUnFollow> watchMutation$UserUnFollow(
          WatchOptions$Mutation$UserUnFollow options) =>
      this.watchMutation(options);
}

class Mutation$UserUnFollow$HookResult {
  Mutation$UserUnFollow$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UserUnFollow runMutation;

  final graphql.QueryResult<Mutation$UserUnFollow> result;
}

Mutation$UserUnFollow$HookResult useMutation$UserUnFollow(
    [WidgetOptions$Mutation$UserUnFollow? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UserUnFollow());
  return Mutation$UserUnFollow$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UserUnFollow> useWatchMutation$UserUnFollow(
        WatchOptions$Mutation$UserUnFollow options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UserUnFollow
    extends graphql.MutationOptions<Mutation$UserUnFollow> {
  WidgetOptions$Mutation$UserUnFollow(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UserUnFollow? onCompleted,
      graphql.OnMutationUpdate<Mutation$UserUnFollow>? update,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UserUnFollow(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUserUnFollow,
            parserFn: _parserFn$Mutation$UserUnFollow);

  final OnMutationCompleted$Mutation$UserUnFollow? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UserUnFollow
    = graphql.MultiSourceResult<Mutation$UserUnFollow>
        Function(Variables$Mutation$UserUnFollow, {Object? optimisticResult});
typedef Builder$Mutation$UserUnFollow = widgets.Widget Function(
    RunMutation$Mutation$UserUnFollow,
    graphql.QueryResult<Mutation$UserUnFollow>?);

class Mutation$UserUnFollow$Widget
    extends graphql_flutter.Mutation<Mutation$UserUnFollow> {
  Mutation$UserUnFollow$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UserUnFollow? options,
      required Builder$Mutation$UserUnFollow builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UserUnFollow(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Mutation$UserUnFollow$userUnFollow {
  Mutation$UserUnFollow$userUnFollow(
      {required this.key, required this.$__typename});

  factory Mutation$UserUnFollow$userUnFollow.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$UserUnFollow$userUnFollow(
        key: (l$key as String), $__typename: (l$$__typename as String));
  }

  final String key;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserUnFollow$userUnFollow) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Mutation$UserUnFollow$userUnFollow
    on Mutation$UserUnFollow$userUnFollow {
  CopyWith$Mutation$UserUnFollow$userUnFollow<
          Mutation$UserUnFollow$userUnFollow>
      get copyWith =>
          CopyWith$Mutation$UserUnFollow$userUnFollow(this, (i) => i);
}

abstract class CopyWith$Mutation$UserUnFollow$userUnFollow<TRes> {
  factory CopyWith$Mutation$UserUnFollow$userUnFollow(
          Mutation$UserUnFollow$userUnFollow instance,
          TRes Function(Mutation$UserUnFollow$userUnFollow) then) =
      _CopyWithImpl$Mutation$UserUnFollow$userUnFollow;

  factory CopyWith$Mutation$UserUnFollow$userUnFollow.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserUnFollow$userUnFollow;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$UserUnFollow$userUnFollow<TRes>
    implements CopyWith$Mutation$UserUnFollow$userUnFollow<TRes> {
  _CopyWithImpl$Mutation$UserUnFollow$userUnFollow(this._instance, this._then);

  final Mutation$UserUnFollow$userUnFollow _instance;

  final TRes Function(Mutation$UserUnFollow$userUnFollow) _then;

  static const _undefined = {};

  TRes call({Object? key = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$UserUnFollow$userUnFollow(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UserUnFollow$userUnFollow<TRes>
    implements CopyWith$Mutation$UserUnFollow$userUnFollow<TRes> {
  _CopyWithStubImpl$Mutation$UserUnFollow$userUnFollow(this._res);

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}
