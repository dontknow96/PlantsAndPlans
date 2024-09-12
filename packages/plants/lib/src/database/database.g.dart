// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PlantDatabaseModelTable extends PlantDatabaseModel
    with TableInfo<$PlantDatabaseModelTable, PlantDatabaseModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlantDatabaseModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'plant_database_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<PlantDatabaseModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlantDatabaseModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlantDatabaseModelData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $PlantDatabaseModelTable createAlias(String alias) {
    return $PlantDatabaseModelTable(attachedDatabase, alias);
  }
}

class PlantDatabaseModelData extends DataClass
    implements Insertable<PlantDatabaseModelData> {
  /// Unique identifier for plant
  final int id;

  /// name for plant
  final String name;

  /// description for plant
  final String description;
  const PlantDatabaseModelData(
      {required this.id, required this.name, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    return map;
  }

  PlantDatabaseModelCompanion toCompanion(bool nullToAbsent) {
    return PlantDatabaseModelCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
    );
  }

  factory PlantDatabaseModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlantDatabaseModelData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
    };
  }

  PlantDatabaseModelData copyWith(
          {int? id, String? name, String? description}) =>
      PlantDatabaseModelData(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
      );
  PlantDatabaseModelData copyWithCompanion(PlantDatabaseModelCompanion data) {
    return PlantDatabaseModelData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlantDatabaseModelData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlantDatabaseModelData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description);
}

class PlantDatabaseModelCompanion
    extends UpdateCompanion<PlantDatabaseModelData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  const PlantDatabaseModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
  });
  PlantDatabaseModelCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String description,
  })  : name = Value(name),
        description = Value(description);
  static Insertable<PlantDatabaseModelData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
    });
  }

  PlantDatabaseModelCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<String>? description}) {
    return PlantDatabaseModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantDatabaseModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$PlantDatabase extends GeneratedDatabase {
  _$PlantDatabase(QueryExecutor e) : super(e);
  $PlantDatabaseManager get managers => $PlantDatabaseManager(this);
  late final $PlantDatabaseModelTable plantDatabaseModel =
      $PlantDatabaseModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [plantDatabaseModel];
}

typedef $$PlantDatabaseModelTableCreateCompanionBuilder
    = PlantDatabaseModelCompanion Function({
  Value<int> id,
  required String name,
  required String description,
});
typedef $$PlantDatabaseModelTableUpdateCompanionBuilder
    = PlantDatabaseModelCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> description,
});

class $$PlantDatabaseModelTableFilterComposer
    extends FilterComposer<_$PlantDatabase, $PlantDatabaseModelTable> {
  $$PlantDatabaseModelTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PlantDatabaseModelTableOrderingComposer
    extends OrderingComposer<_$PlantDatabase, $PlantDatabaseModelTable> {
  $$PlantDatabaseModelTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$PlantDatabaseModelTableTableManager extends RootTableManager<
    _$PlantDatabase,
    $PlantDatabaseModelTable,
    PlantDatabaseModelData,
    $$PlantDatabaseModelTableFilterComposer,
    $$PlantDatabaseModelTableOrderingComposer,
    $$PlantDatabaseModelTableCreateCompanionBuilder,
    $$PlantDatabaseModelTableUpdateCompanionBuilder,
    (
      PlantDatabaseModelData,
      BaseReferences<_$PlantDatabase, $PlantDatabaseModelTable,
          PlantDatabaseModelData>
    ),
    PlantDatabaseModelData,
    PrefetchHooks Function()> {
  $$PlantDatabaseModelTableTableManager(
      _$PlantDatabase db, $PlantDatabaseModelTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PlantDatabaseModelTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$PlantDatabaseModelTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> description = const Value.absent(),
          }) =>
              PlantDatabaseModelCompanion(
            id: id,
            name: name,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String description,
          }) =>
              PlantDatabaseModelCompanion.insert(
            id: id,
            name: name,
            description: description,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PlantDatabaseModelTableProcessedTableManager = ProcessedTableManager<
    _$PlantDatabase,
    $PlantDatabaseModelTable,
    PlantDatabaseModelData,
    $$PlantDatabaseModelTableFilterComposer,
    $$PlantDatabaseModelTableOrderingComposer,
    $$PlantDatabaseModelTableCreateCompanionBuilder,
    $$PlantDatabaseModelTableUpdateCompanionBuilder,
    (
      PlantDatabaseModelData,
      BaseReferences<_$PlantDatabase, $PlantDatabaseModelTable,
          PlantDatabaseModelData>
    ),
    PlantDatabaseModelData,
    PrefetchHooks Function()>;

class $PlantDatabaseManager {
  final _$PlantDatabase _db;
  $PlantDatabaseManager(this._db);
  $$PlantDatabaseModelTableTableManager get plantDatabaseModel =>
      $$PlantDatabaseModelTableTableManager(_db, _db.plantDatabaseModel);
}
