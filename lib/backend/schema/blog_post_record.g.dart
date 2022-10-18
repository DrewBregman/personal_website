// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_post_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogPostRecord> _$blogPostRecordSerializer =
    new _$BlogPostRecordSerializer();

class _$BlogPostRecordSerializer
    implements StructuredSerializer<BlogPostRecord> {
  @override
  final Iterable<Type> types = const [BlogPostRecord, _$BlogPostRecord];
  @override
  final String wireName = 'BlogPostRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BlogPostRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BlogPostRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogPostRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BlogPostRecord extends BlogPostRecord {
  @override
  final String? content;
  @override
  final DateTime? timestamp;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BlogPostRecord([void Function(BlogPostRecordBuilder)? updates]) =>
      (new BlogPostRecordBuilder()..update(updates))._build();

  _$BlogPostRecord._({this.content, this.timestamp, this.title, this.ffRef})
      : super._();

  @override
  BlogPostRecord rebuild(void Function(BlogPostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogPostRecordBuilder toBuilder() =>
      new BlogPostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogPostRecord &&
        content == other.content &&
        timestamp == other.timestamp &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, content.hashCode), timestamp.hashCode), title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlogPostRecord')
          ..add('content', content)
          ..add('timestamp', timestamp)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BlogPostRecordBuilder
    implements Builder<BlogPostRecord, BlogPostRecordBuilder> {
  _$BlogPostRecord? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BlogPostRecordBuilder() {
    BlogPostRecord._initializeBuilder(this);
  }

  BlogPostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _timestamp = $v.timestamp;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogPostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlogPostRecord;
  }

  @override
  void update(void Function(BlogPostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlogPostRecord build() => _build();

  _$BlogPostRecord _build() {
    final _$result = _$v ??
        new _$BlogPostRecord._(
            content: content, timestamp: timestamp, title: title, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
