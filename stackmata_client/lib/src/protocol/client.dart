/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:stackmata_client/src/protocol/book.dart' as _i3;
import 'package:stackmata_client/src/protocol/pagination.dart' as _i4;
import 'protocol.dart' as _i5;

/// The endpoint for working with books.
/// {@category Endpoint}
class EndpointBooks extends _i1.EndpointRef {
  EndpointBooks(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'books';

  /// Upload a list of books.
  ///
  /// Before any books are uploaded, all current rows will be deleted.
  _i2.Future<int> uploadBooks(List<_i3.Book> books) =>
      caller.callServerEndpoint<int>(
        'books',
        'uploadBooks',
        {'books': books},
      );

  /// Get all the books in the database.
  ///
  /// Books will be ordered by title nd [pagination] will be applied.
  _i2.Future<List<_i3.Book>> getBooks(_i4.Pagination pagination) =>
      caller.callServerEndpoint<List<_i3.Book>>(
        'books',
        'getBooks',
        {'pagination': pagination},
      );
}

/// This is an example endpoint of your server. It's best practice to use the
/// `Endpoint` ending of the class name, but it will be removed when accessing
/// the endpoint from the client. I.e., this endpoint can be accessed through
/// `client.example` on the client side.
///
/// After adding or modifying an endpoint, you will need to run
/// `serverpod generate` to update the server and client code.
/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  /// You create methods in your endpoint which are accessible from the client
  /// by creating a public method with `Session` as its first parameter. `bool`,
  /// `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`,
  /// `ByteData`, and other serializable classes, exceptions and enums from your
  /// from your `protocol` directory. The methods should return a typed future;
  /// the same types as for the parameters are supported. The `session` object
  /// provides access to the database, logging, passwords, and information about
  /// the request being made to the server.
  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    books = EndpointBooks(this);
    example = EndpointExample(this);
  }

  late final EndpointBooks books;

  late final EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'books': books,
        'example': example,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
