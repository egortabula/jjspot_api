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

  Future<Either<AppwriteException, Unit>> uploadAvatar(
    Uint8List avatarBytes,
    String filename, {
    required bool isAvatarExist,
    required String userId,
  }) async {
    try {
      if (isAvatarExist) {
        await _storage.deleteFile(
          bucketId: usersBucketId,
          fileId: userId,
        );
      }
      await _storage.createFile(
        bucketId: usersBucketId,
        fileId: userId,
        file: InputFile.fromBytes(
          bytes: avatarBytes,
          filename: filename,
        ),
      );
      return right(unit);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, Uint8List>> getUserAvatar(
    String userId,
  ) async {
    try {
      final avatar = await _storage.getFilePreview(
        bucketId: usersBucketId,
        fileId: userId,
        width: 200,
        height: 200,
      );
      return right(avatar);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
