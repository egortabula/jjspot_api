import 'dart:typed_data';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:dartz/dartz.dart';

import '../consts.dart';

class StorageProvider {
  const StorageProvider(this._storage);

  final Storage _storage;

  Future<Either<AppwriteException, File>> uploadLocationImage(
    Uint8List bytes,
    String filename, {
    String? contentType,
  }) async {
    try {
      final file = await _storage.createFile(
        bucketId: locationsBucketId,
        fileId: ID.unique(),
        file: InputFile.fromBytes(
          bytes: bytes,
          filename: filename,
          contentType: contentType,
        ),
      );
      return right(file);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
