class Input$UserInfo {
  factory Input$UserInfo({required String name}) => Input$UserInfo._({
        r'name': name,
      });

  Input$UserInfo._(this._$data);

  factory Input$UserInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$UserInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$UserInfo<Input$UserInfo> get copyWith =>
      CopyWith$Input$UserInfo(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$UserInfo<TRes> {
  factory CopyWith$Input$UserInfo(
          Input$UserInfo instance, TRes Function(Input$UserInfo) then) =
      _CopyWithImpl$Input$UserInfo;

  factory CopyWith$Input$UserInfo.stub(TRes res) =
      _CopyWithStubImpl$Input$UserInfo;

  TRes call({String? name});
}

class _CopyWithImpl$Input$UserInfo<TRes>
    implements CopyWith$Input$UserInfo<TRes> {
  _CopyWithImpl$Input$UserInfo(this._instance, this._then);

  final Input$UserInfo _instance;

  final TRes Function(Input$UserInfo) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Input$UserInfo._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$UserInfo<TRes>
    implements CopyWith$Input$UserInfo<TRes> {
  _CopyWithStubImpl$Input$UserInfo(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$ChatInfo {
  factory Input$ChatInfo({required String recieverKey, required String data}) =>
      Input$ChatInfo._({
        r'recieverKey': recieverKey,
        r'data': data,
      });

  Input$ChatInfo._(this._$data);

  factory Input$ChatInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recieverKey = data['recieverKey'];
    result$data['recieverKey'] = (l$recieverKey as String);
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    return Input$ChatInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String get recieverKey => (_$data['recieverKey'] as String);
  String get data => (_$data['data'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recieverKey = recieverKey;
    result$data['recieverKey'] = l$recieverKey;
    final l$data = data;
    result$data['data'] = l$data;
    return result$data;
  }

  CopyWith$Input$ChatInfo<Input$ChatInfo> get copyWith =>
      CopyWith$Input$ChatInfo(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChatInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recieverKey = recieverKey;
    final lOther$recieverKey = other.recieverKey;
    if (l$recieverKey != lOther$recieverKey) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recieverKey = recieverKey;
    final l$data = data;
    return Object.hashAll([l$recieverKey, l$data]);
  }
}

abstract class CopyWith$Input$ChatInfo<TRes> {
  factory CopyWith$Input$ChatInfo(
          Input$ChatInfo instance, TRes Function(Input$ChatInfo) then) =
      _CopyWithImpl$Input$ChatInfo;

  factory CopyWith$Input$ChatInfo.stub(TRes res) =
      _CopyWithStubImpl$Input$ChatInfo;

  TRes call({String? recieverKey, String? data});
}

class _CopyWithImpl$Input$ChatInfo<TRes>
    implements CopyWith$Input$ChatInfo<TRes> {
  _CopyWithImpl$Input$ChatInfo(this._instance, this._then);

  final Input$ChatInfo _instance;

  final TRes Function(Input$ChatInfo) _then;

  static const _undefined = {};

  TRes call({Object? recieverKey = _undefined, Object? data = _undefined}) =>
      _then(Input$ChatInfo._({
        ..._instance._$data,
        if (recieverKey != _undefined && recieverKey != null)
          'recieverKey': (recieverKey as String),
        if (data != _undefined && data != null) 'data': (data as String),
      }));
}

class _CopyWithStubImpl$Input$ChatInfo<TRes>
    implements CopyWith$Input$ChatInfo<TRes> {
  _CopyWithStubImpl$Input$ChatInfo(this._res);

  TRes _res;

  call({String? recieverKey, String? data}) => _res;
}

const possibleTypesMap = {};
