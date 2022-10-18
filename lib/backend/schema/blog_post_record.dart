import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blog_post_record.g.dart';

abstract class BlogPostRecord
    implements Built<BlogPostRecord, BlogPostRecordBuilder> {
  static Serializer<BlogPostRecord> get serializer =>
      _$blogPostRecordSerializer;

  String? get content;

  DateTime? get timestamp;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BlogPostRecordBuilder builder) => builder
    ..content = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blog_post');

  static Stream<BlogPostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlogPostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlogPostRecord._();
  factory BlogPostRecord([void Function(BlogPostRecordBuilder) updates]) =
      _$BlogPostRecord;

  static BlogPostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlogPostRecordData({
  String? content,
  DateTime? timestamp,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    BlogPostRecord.serializer,
    BlogPostRecord(
      (b) => b
        ..content = content
        ..timestamp = timestamp
        ..title = title,
    ),
  );

  return firestoreData;
}
