/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/books_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import 'package:stackmata_server/src/generated/book.dart' as _i4;
import 'package:stackmata_server/src/generated/pagination.dart' as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'books': _i2.BooksEndpoint()
        ..initialize(
          server,
          'books',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
    };
    connectors['books'] = _i1.EndpointConnector(
      name: 'books',
      endpoint: endpoints['books']!,
      methodConnectors: {
        'uploadBooks': _i1.MethodConnector(
          name: 'uploadBooks',
          params: {
            'books': _i1.ParameterDescription(
              name: 'books',
              type: _i1.getType<List<_i4.Book>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['books'] as _i2.BooksEndpoint).uploadBooks(
            session,
            params['books'],
          ),
        ),
        'getBooks': _i1.MethodConnector(
          name: 'getBooks',
          params: {
            'pagination': _i1.ParameterDescription(
              name: 'pagination',
              type: _i1.getType<_i5.Pagination>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['books'] as _i2.BooksEndpoint).getBooks(
            session,
            params['pagination'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
  }
}
