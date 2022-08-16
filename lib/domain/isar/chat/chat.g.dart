// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings

extension GetChatCollection on Isar {
  IsarCollection<Chat> get chats => collection();
}

const ChatSchema = CollectionSchema(
  name: r'Chat',
  schema:
      r'{"name":"Chat","idName":"id","properties":[{"name":"created","type":"Long"},{"name":"data","type":"String"},{"name":"key","type":"String"},{"name":"recieverKey","type":"String"},{"name":"senderKey","type":"String"}],"indexes":[{"name":"key","unique":true,"replace":false,"properties":[{"name":"key","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: r'id',
  propertyIds: {
    r'created': 0,
    r'data': 1,
    r'key': 2,
    r'recieverKey': 3,
    r'senderKey': 4
  },
  listProperties: {},
  indexIds: {r'key': 0},
  indexValueTypes: {
    r'key': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _chatGetId,
  setId: _chatSetId,
  getLinks: _chatGetLinks,
  attachLinks: _chatAttachLinks,
  serializeNative: _chatSerializeNative,
  deserializeNative: _chatDeserializeNative,
  deserializePropNative: _chatDeserializePropNative,
  serializeWeb: _chatSerializeWeb,
  deserializeWeb: _chatDeserializeWeb,
  deserializePropWeb: _chatDeserializePropWeb,
  version: 4,
);

int? _chatGetId(Chat object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _chatSetId(Chat object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _chatGetLinks(Chat object) {
  return [];
}

void _chatSerializeNative(IsarCollection<Chat> collection, IsarCObject cObj,
    Chat object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  final data$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.data);
  final key$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.key);
  final recieverKey$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.recieverKey);
  final senderKey$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.senderKey);
  final size = (staticSize +
      3 +
      (data$Bytes.length) +
      3 +
      (key$Bytes.length) +
      3 +
      (recieverKey$Bytes.length) +
      3 +
      (senderKey$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeHeader();
  writer.writeDateTime(offsets[0], object.created);
  writer.writeByteList(offsets[1], data$Bytes);
  writer.writeByteList(offsets[2], key$Bytes);
  writer.writeByteList(offsets[3], recieverKey$Bytes);
  writer.writeByteList(offsets[4], senderKey$Bytes);
}

Chat _chatDeserializeNative(IsarCollection<Chat> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Chat();
  object.created = reader.readDateTime(offsets[0]);
  object.data = reader.readString(offsets[1]);
  object.id = id;
  object.key = reader.readString(offsets[2]);
  object.recieverKey = reader.readString(offsets[3]);
  object.senderKey = reader.readString(offsets[4]);
  return object;
}

P _chatDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Illegal propertyIndex');
  }
}

Object _chatSerializeWeb(IsarCollection<Chat> collection, Chat object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, r'created', object.created.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, r'data', object.data);
  IsarNative.jsObjectSet(jsObj, r'id', object.id);
  IsarNative.jsObjectSet(jsObj, r'key', object.key);
  IsarNative.jsObjectSet(jsObj, r'recieverKey', object.recieverKey);
  IsarNative.jsObjectSet(jsObj, r'senderKey', object.senderKey);
  return jsObj;
}

Chat _chatDeserializeWeb(IsarCollection<Chat> collection, Object jsObj) {
  final object = Chat();
  object.created = IsarNative.jsObjectGet(jsObj, r'created') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, r'created') as int,
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.data = IsarNative.jsObjectGet(jsObj, r'data') ?? '';
  object.id = IsarNative.jsObjectGet(jsObj, r'id');
  object.key = IsarNative.jsObjectGet(jsObj, r'key') ?? '';
  object.recieverKey = IsarNative.jsObjectGet(jsObj, r'recieverKey') ?? '';
  object.senderKey = IsarNative.jsObjectGet(jsObj, r'senderKey') ?? '';
  return object;
}

P _chatDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case r'created':
      return (IsarNative.jsObjectGet(jsObj, r'created') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, r'created') as int,
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case r'data':
      return (IsarNative.jsObjectGet(jsObj, r'data') ?? '') as P;
    case r'id':
      return (IsarNative.jsObjectGet(jsObj, r'id')) as P;
    case r'key':
      return (IsarNative.jsObjectGet(jsObj, r'key') ?? '') as P;
    case r'recieverKey':
      return (IsarNative.jsObjectGet(jsObj, r'recieverKey') ?? '') as P;
    case r'senderKey':
      return (IsarNative.jsObjectGet(jsObj, r'senderKey') ?? '') as P;
    default:
      throw IsarError('Illegal propertyName');
  }
}

void _chatAttachLinks(IsarCollection<dynamic> col, int id, Chat object) {}

extension ChatByIndex on IsarCollection<Chat> {
  Future<Chat?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  Chat? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<Chat?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<Chat?> getAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'key', values);
  }

  Future<int> deleteAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'key', values);
  }

  int deleteAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'key', values);
  }

  Future<int> putByKey(Chat object) {
    return putByIndex(r'key', object);
  }

  int putByKeySync(Chat object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<int>> putAllByKey(List<Chat> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<int> putAllByKeySync(List<Chat> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension ChatQueryWhereSort on QueryBuilder<Chat, Chat, QWhere> {
  QueryBuilder<Chat, Chat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChatQueryWhere on QueryBuilder<Chat, Chat, QWhereClause> {
  QueryBuilder<Chat, Chat, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterWhereClause> idNotEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Chat, Chat, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Chat, Chat, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Chat, Chat, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterWhereClause> keyEqualTo(String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterWhereClause> keyNotEqualTo(String key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ChatQueryFilter on QueryBuilder<Chat, Chat, QFilterCondition> {
  QueryBuilder<Chat, Chat, QAfterFilterCondition> createdEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created',
        value: value,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> createdGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'created',
        value: value,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> createdLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'created',
        value: value,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> createdBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'created',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> dataMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'data',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> keyMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recieverKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recieverKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recieverKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recieverKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recieverKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recieverKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recieverKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> recieverKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recieverKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'senderKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Chat, Chat, QAfterFilterCondition> senderKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'senderKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension ChatQueryLinks on QueryBuilder<Chat, Chat, QFilterCondition> {}

extension ChatQueryWhereSortBy on QueryBuilder<Chat, Chat, QSortBy> {
  QueryBuilder<Chat, Chat, QAfterSortBy> sortByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortByRecieverKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recieverKey', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortByRecieverKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recieverKey', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortBySenderKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> sortBySenderKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.desc);
    });
  }
}

extension ChatQueryWhereSortThenBy on QueryBuilder<Chat, Chat, QSortThenBy> {
  QueryBuilder<Chat, Chat, QAfterSortBy> thenByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByRecieverKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recieverKey', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenByRecieverKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recieverKey', Sort.desc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenBySenderKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.asc);
    });
  }

  QueryBuilder<Chat, Chat, QAfterSortBy> thenBySenderKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.desc);
    });
  }
}

extension ChatQueryWhereDistinct on QueryBuilder<Chat, Chat, QDistinct> {
  QueryBuilder<Chat, Chat, QDistinct> distinctByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created');
    });
  }

  QueryBuilder<Chat, Chat, QDistinct> distinctByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'data', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Chat, Chat, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Chat, Chat, QDistinct> distinctByRecieverKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recieverKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Chat, Chat, QDistinct> distinctBySenderKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'senderKey', caseSensitive: caseSensitive);
    });
  }
}

extension ChatQueryProperty on QueryBuilder<Chat, Chat, QQueryProperty> {
  QueryBuilder<Chat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Chat, DateTime, QQueryOperations> createdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created');
    });
  }

  QueryBuilder<Chat, String, QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }

  QueryBuilder<Chat, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<Chat, String, QQueryOperations> recieverKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recieverKey');
    });
  }

  QueryBuilder<Chat, String, QQueryOperations> senderKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'senderKey');
    });
  }
}
