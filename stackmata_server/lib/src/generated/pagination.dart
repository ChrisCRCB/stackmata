/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

/// Used for defining paginations.
abstract class Pagination extends _i1.SerializableEntity {
  Pagination._({
    required this.pageNumber,
    required this.numberOfRecords,
  });

  factory Pagination({
    required int pageNumber,
    required int numberOfRecords,
  }) = _PaginationImpl;

  factory Pagination.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Pagination(
      pageNumber: serializationManager
          .deserialize<int>(jsonSerialization['pageNumber']),
      numberOfRecords: serializationManager
          .deserialize<int>(jsonSerialization['numberOfRecords']),
    );
  }

  /// The page number.
  int pageNumber;

  /// The number of records to show.
  int numberOfRecords;

  Pagination copyWith({
    int? pageNumber,
    int? numberOfRecords,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'pageNumber': pageNumber,
      'numberOfRecords': numberOfRecords,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'pageNumber': pageNumber,
      'numberOfRecords': numberOfRecords,
    };
  }
}

class _PaginationImpl extends Pagination {
  _PaginationImpl({
    required int pageNumber,
    required int numberOfRecords,
  }) : super._(
          pageNumber: pageNumber,
          numberOfRecords: numberOfRecords,
        );

  @override
  Pagination copyWith({
    int? pageNumber,
    int? numberOfRecords,
  }) {
    return Pagination(
      pageNumber: pageNumber ?? this.pageNumber,
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
    );
  }
}
