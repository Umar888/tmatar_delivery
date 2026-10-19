import 'package:flutter_test/flutter_test.dart';
import 'package:tmatar_delivery/core/constants/app_constants.dart';
import 'package:tmatar_delivery/data/mock/mock_delivery_server.dart';

void main() {
  late MockDeliveryServer server;
  const auth = 'Bearer tm_test';

  MockResponse post(String path, [Map<String, dynamic>? body]) =>
      server.handle(method: 'POST', path: path, body: body ?? {}, authorization: auth);

  MockResponse get(String path, [Map<String, dynamic> query = const {}]) =>
      server.handle(method: 'GET', path: path, query: query, authorization: auth);

  setUp(() => server = MockDeliveryServer());

  test('login needs a valid phone and the demo otp', () {
    expect(server.handle(method: 'POST', path: '/api/auth/send-otp', body: {'phone': '12345'}).statusCode, 400);
    expect(server.handle(method: 'POST', path: '/api/auth/send-otp', body: {'phone': '9876543210'}).statusCode, 200);

    final wrong = server.handle(
      method: 'POST',
      path: '/api/auth/verify-otp',
      body: {'phone': '9876543210', 'otp': '000000'},
    );
    expect(wrong.statusCode, 400);

    final ok = server.handle(
      method: 'POST',
      path: '/api/auth/verify-otp',
      body: {'phone': '9876543210', 'otp': AppConstants.demoOtp},
    );
    expect(ok.statusCode, 200);
    expect((ok.body['data'] as Map)['token'], startsWith('tm_'));
  });

  test('delivery endpoints reject missing token', () {
    final res = server.handle(method: 'GET', path: '/api/delivery/orders', query: {'status': 'new'});
    expect(res.statusCode, 401);
  });

  test('full order flow from accept to delivered', () {
    const base = '/api/delivery/orders/TM12567';
    expect(post('$base/pickup', {'item_ids': <String>[]}).statusCode, 409);
    expect(post('$base/accept').statusCode, 200);
    expect(post('$base/accept').statusCode, 409);

    expect(
      post('$base/pickup', {
        'item_ids': ['TM12567-tomato'],
      }).statusCode,
      400,
    );
    expect(
      post('$base/pickup', {
        'item_ids': ['TM12567-tomato', 'TM12567-onion'],
      }).statusCode,
      200,
    );

    expect(post('$base/deliver', {'signature': ''}).statusCode, 400);
    final delivered = post('$base/deliver', {'signature': 'abc'});
    expect(delivered.statusCode, 200);
    expect((delivered.body['data'] as Map)['status'], 'delivered');

    final history = get('/api/delivery/orders', {'status': 'history', 'filter': 'completed'});
    expect((history.body['data'] as List).any((o) => o['id'] == 'TM12567'), isTrue);
  });

  test('cannot accept while offline', () {
    server.handle(method: 'PUT', path: '/api/delivery/profile', body: {'is_online': false}, authorization: auth);
    expect(post('/api/delivery/orders/TM12566/accept').statusCode, 403);
  });

  test('reject needs a reason and hides the order', () {
    expect(post('/api/delivery/orders/TM12565/reject').statusCode, 400);
    expect(post('/api/delivery/orders/TM12565/reject', {'reason': 'Vehicle issue'}).statusCode, 200);
    final list = get('/api/delivery/orders', {'status': 'new'}).body['data'] as List;
    expect(list.any((o) => o['id'] == 'TM12565'), isFalse);
  });

  test('delivering adds to today earnings', () {
    final today = DateTime.now().toIso8601String().substring(0, 10);
    double total() => (get('/api/delivery/earnings', {'period': 'daily', 'date': today}).body['data'] as Map)['total'];
    final before = total();
    post('/api/delivery/orders/TM12562/pickup', {
      'item_ids': ['TM12562-onion', 'TM12562-potato'],
    });
    post('/api/delivery/orders/TM12562/deliver', {'signature': 'abc'});
    expect(total(), greaterThan(before));
  });
}
