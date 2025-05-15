// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_collection.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetEmployeeCollectionCollection on Isar {
  IsarCollection<int, EmployeeCollection> get employeeCollections =>
      this.collection();
}

const EmployeeCollectionSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'EmployeeCollection',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'workList',
        type: IsarType.objectList,
        target: 'WorkCollection',
      ),
      IsarPropertySchema(
        name: 'totalCompleted',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'totalFailures',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'errorRate',
        type: IsarType.double,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, EmployeeCollection>(
    serialize: serializeEmployeeCollection,
    deserialize: deserializeEmployeeCollection,
    deserializeProperty: deserializeEmployeeCollectionProp,
  ),
  embeddedSchemas: [WorkCollectionSchema],
);

@isarProtected
int serializeEmployeeCollection(IsarWriter writer, EmployeeCollection object) {
  {
    final value = object.name;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final list = object.workList;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeWorkCollection(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeLong(writer, 3, object.totalCompleted);
  IsarCore.writeLong(writer, 4, object.totalFailures);
  IsarCore.writeDouble(writer, 5, object.errorRate);
  return object.id;
}

@isarProtected
EmployeeCollection deserializeEmployeeCollection(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String? _name;
  _name = IsarCore.readString(reader, 1);
  final List<WorkCollection> _workList;
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _workList = const [];
      } else {
        final list = List<WorkCollection>.filled(length, WorkCollection(),
            growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = WorkCollection();
            } else {
              final embedded = deserializeWorkCollection(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        _workList = list;
      }
    }
  }
  final object = EmployeeCollection(
    id: _id,
    name: _name,
    workList: _workList,
  );
  return object;
}

@isarProtected
dynamic deserializeEmployeeCollectionProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      {
        final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const [];
          } else {
            final list = List<WorkCollection>.filled(length, WorkCollection(),
                growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = WorkCollection();
                } else {
                  final embedded = deserializeWorkCollection(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 3:
      return IsarCore.readLong(reader, 3);
    case 4:
      return IsarCore.readLong(reader, 4);
    case 5:
      return IsarCore.readDouble(reader, 5);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _EmployeeCollectionUpdate {
  bool call({
    required int id,
    String? name,
    int? totalCompleted,
    int? totalFailures,
    double? errorRate,
  });
}

class _EmployeeCollectionUpdateImpl implements _EmployeeCollectionUpdate {
  const _EmployeeCollectionUpdateImpl(this.collection);

  final IsarCollection<int, EmployeeCollection> collection;

  @override
  bool call({
    required int id,
    Object? name = ignore,
    Object? totalCompleted = ignore,
    Object? totalFailures = ignore,
    Object? errorRate = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
          if (totalCompleted != ignore) 3: totalCompleted as int?,
          if (totalFailures != ignore) 4: totalFailures as int?,
          if (errorRate != ignore) 5: errorRate as double?,
        }) >
        0;
  }
}

sealed class _EmployeeCollectionUpdateAll {
  int call({
    required List<int> id,
    String? name,
    int? totalCompleted,
    int? totalFailures,
    double? errorRate,
  });
}

class _EmployeeCollectionUpdateAllImpl implements _EmployeeCollectionUpdateAll {
  const _EmployeeCollectionUpdateAllImpl(this.collection);

  final IsarCollection<int, EmployeeCollection> collection;

  @override
  int call({
    required List<int> id,
    Object? name = ignore,
    Object? totalCompleted = ignore,
    Object? totalFailures = ignore,
    Object? errorRate = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
      if (totalCompleted != ignore) 3: totalCompleted as int?,
      if (totalFailures != ignore) 4: totalFailures as int?,
      if (errorRate != ignore) 5: errorRate as double?,
    });
  }
}

extension EmployeeCollectionUpdate on IsarCollection<int, EmployeeCollection> {
  _EmployeeCollectionUpdate get update => _EmployeeCollectionUpdateImpl(this);

  _EmployeeCollectionUpdateAll get updateAll =>
      _EmployeeCollectionUpdateAllImpl(this);
}

sealed class _EmployeeCollectionQueryUpdate {
  int call({
    String? name,
    int? totalCompleted,
    int? totalFailures,
    double? errorRate,
  });
}

class _EmployeeCollectionQueryUpdateImpl
    implements _EmployeeCollectionQueryUpdate {
  const _EmployeeCollectionQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<EmployeeCollection> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? totalCompleted = ignore,
    Object? totalFailures = ignore,
    Object? errorRate = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
      if (totalCompleted != ignore) 3: totalCompleted as int?,
      if (totalFailures != ignore) 4: totalFailures as int?,
      if (errorRate != ignore) 5: errorRate as double?,
    });
  }
}

extension EmployeeCollectionQueryUpdate on IsarQuery<EmployeeCollection> {
  _EmployeeCollectionQueryUpdate get updateFirst =>
      _EmployeeCollectionQueryUpdateImpl(this, limit: 1);

  _EmployeeCollectionQueryUpdate get updateAll =>
      _EmployeeCollectionQueryUpdateImpl(this);
}

class _EmployeeCollectionQueryBuilderUpdateImpl
    implements _EmployeeCollectionQueryUpdate {
  const _EmployeeCollectionQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<EmployeeCollection, EmployeeCollection, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? totalCompleted = ignore,
    Object? totalFailures = ignore,
    Object? errorRate = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
        if (totalCompleted != ignore) 3: totalCompleted as int?,
        if (totalFailures != ignore) 4: totalFailures as int?,
        if (errorRate != ignore) 5: errorRate as double?,
      });
    } finally {
      q.close();
    }
  }
}

extension EmployeeCollectionQueryBuilderUpdate
    on QueryBuilder<EmployeeCollection, EmployeeCollection, QOperations> {
  _EmployeeCollectionQueryUpdate get updateFirst =>
      _EmployeeCollectionQueryBuilderUpdateImpl(this, limit: 1);

  _EmployeeCollectionQueryUpdate get updateAll =>
      _EmployeeCollectionQueryBuilderUpdateImpl(this);
}

extension EmployeeCollectionQueryFilter
    on QueryBuilder<EmployeeCollection, EmployeeCollection, QFilterCondition> {
  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      workListIsEmpty() {
    return not().workListIsNotEmpty();
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      workListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalCompletedEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalCompletedGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalCompletedGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalCompletedLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalCompletedLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalCompletedBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalFailuresEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalFailuresGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalFailuresGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalFailuresLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalFailuresLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      totalFailuresBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      errorRateEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      errorRateGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      errorRateGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      errorRateLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      errorRateLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterFilterCondition>
      errorRateBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }
}

extension EmployeeCollectionQueryObject
    on QueryBuilder<EmployeeCollection, EmployeeCollection, QFilterCondition> {}

extension EmployeeCollectionQuerySortBy
    on QueryBuilder<EmployeeCollection, EmployeeCollection, QSortBy> {
  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByTotalCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByTotalCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByTotalFailures() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByTotalFailuresDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByErrorRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      sortByErrorRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension EmployeeCollectionQuerySortThenBy
    on QueryBuilder<EmployeeCollection, EmployeeCollection, QSortThenBy> {
  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByTotalCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByTotalCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByTotalFailures() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByTotalFailuresDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByErrorRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterSortBy>
      thenByErrorRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension EmployeeCollectionQueryWhereDistinct
    on QueryBuilder<EmployeeCollection, EmployeeCollection, QDistinct> {
  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterDistinct>
      distinctByTotalCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterDistinct>
      distinctByTotalFailures() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<EmployeeCollection, EmployeeCollection, QAfterDistinct>
      distinctByErrorRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension EmployeeCollectionQueryProperty1
    on QueryBuilder<EmployeeCollection, EmployeeCollection, QProperty> {
  QueryBuilder<EmployeeCollection, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<EmployeeCollection, String?, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<EmployeeCollection, List<WorkCollection>, QAfterProperty>
      workListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<EmployeeCollection, int, QAfterProperty>
      totalCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<EmployeeCollection, int, QAfterProperty>
      totalFailuresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<EmployeeCollection, double, QAfterProperty> errorRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension EmployeeCollectionQueryProperty2<R>
    on QueryBuilder<EmployeeCollection, R, QAfterProperty> {
  QueryBuilder<EmployeeCollection, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<EmployeeCollection, (R, String?), QAfterProperty>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<EmployeeCollection, (R, List<WorkCollection>), QAfterProperty>
      workListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<EmployeeCollection, (R, int), QAfterProperty>
      totalCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<EmployeeCollection, (R, int), QAfterProperty>
      totalFailuresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<EmployeeCollection, (R, double), QAfterProperty>
      errorRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension EmployeeCollectionQueryProperty3<R1, R2>
    on QueryBuilder<EmployeeCollection, (R1, R2), QAfterProperty> {
  QueryBuilder<EmployeeCollection, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<EmployeeCollection, (R1, R2, String?), QOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<EmployeeCollection, (R1, R2, List<WorkCollection>), QOperations>
      workListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<EmployeeCollection, (R1, R2, int), QOperations>
      totalCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<EmployeeCollection, (R1, R2, int), QOperations>
      totalFailuresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<EmployeeCollection, (R1, R2, double), QOperations>
      errorRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const WorkCollectionSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'WorkCollection',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'status',
        type: IsarType.byte,
        enumMap: {"pending": 0, "started": 1, "success": 2, "failure": 3},
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, WorkCollection>(
    serialize: serializeWorkCollection,
    deserialize: deserializeWorkCollection,
  ),
);

@isarProtected
int serializeWorkCollection(IsarWriter writer, WorkCollection object) {
  {
    final value = object.description;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  IsarCore.writeByte(writer, 2, object.status.index);
  return 0;
}

@isarProtected
WorkCollection deserializeWorkCollection(IsarReader reader) {
  final String? _description;
  _description = IsarCore.readString(reader, 1);
  final WorkStatus _status;
  {
    if (IsarCore.readNull(reader, 2)) {
      _status = WorkStatus.pending;
    } else {
      _status = _workCollectionStatus[IsarCore.readByte(reader, 2)] ??
          WorkStatus.pending;
    }
  }
  final object = WorkCollection(
    description: _description,
    status: _status,
  );
  return object;
}

const _workCollectionStatus = {
  0: WorkStatus.pending,
  1: WorkStatus.started,
  2: WorkStatus.success,
  3: WorkStatus.failure,
};

extension WorkCollectionQueryFilter
    on QueryBuilder<WorkCollection, WorkCollection, QFilterCondition> {
  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      statusEqualTo(
    WorkStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      statusGreaterThan(
    WorkStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      statusGreaterThanOrEqualTo(
    WorkStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      statusLessThan(
    WorkStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      statusLessThanOrEqualTo(
    WorkStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<WorkCollection, WorkCollection, QAfterFilterCondition>
      statusBetween(
    WorkStatus lower,
    WorkStatus upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }
}

extension WorkCollectionQueryObject
    on QueryBuilder<WorkCollection, WorkCollection, QFilterCondition> {}
