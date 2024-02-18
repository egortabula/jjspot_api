import 'package:appwrite/appwrite.dart';
import 'package:dart_appwrite/models.dart';
import 'package:dartz/dartz.dart';
import 'package:jjspot_api/jjspot_api.dart';

class PromocodesProvider {
  const PromocodesProvider(this.database);

  final Databases database;

  Future<Either<AppwriteException, PromocodeDto>> createPromocode(
    PromocodeDto dto,
  ) async {
    try {
      final data = dto.toMap()..remove('\$id');
      final doc = await database.createDocument(
        databaseId: databaseId,
        collectionId: 'promoCodes',
        documentId: dto.id,
        data: data,
      );
      final res = PromocodeDtoMapper.fromMap(doc.data);
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, List<PromocodeDto>>>
      getPromocodesList() async {
    try {
      final list = await database.listDocuments(
        databaseId: databaseId,
        collectionId: 'promoCodes',
        queries: [Query.limit(50)],
      );
      if (list.documents.isEmpty) {
        return right([]);
      }
      final res = list.documents
          .map((doc) => PromocodeDtoMapper.fromMap(doc.data))
          .toList();
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, PromocodeDto>> updatePromocode(
    PromocodeDto dto,
  ) async {
    try {
      final doc = await database.updateDocument(
        databaseId: databaseId,
        collectionId: 'promoCodes',
        documentId: dto.id,
        data: dto.toMap(),
      );
      final res = PromocodeDtoMapper.fromMap(doc.data);
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, Unit>> deletePromocode(String id) async {
    try {
      await database.deleteDocument(
        databaseId: databaseId,
        collectionId: 'promoCodes',
        documentId: id,
      );
      return right(unit);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
