import '../../core/enums.dart';
import '../models/order.dart';
import '../models/order_item.dart';
import '../models/order_location.dart';

class MockSeed {
  MockSeed._();

  static const store = OrderLocation(
    name: 'Tmatar Mart - Alkapuri',
    address: '12, Alkapuri, Vadodara',
    phone: '9824012345',
    lat: 22.3106,
    lng: 73.1700,
  );

  static const _products = {
    'tomato': ('Fresh Tomato', '1 kg', 20.0),
    'onion': ('Onion', '1 kg', 25.0),
    'potato': ('Potato', '1 kg', 22.0),
    'chilli': ('Green Chilli', '100 g', 8.0),
    'coriander': ('Coriander', '100 g', 10.0),
    'cucumber': ('Cucumber', '500 g', 15.0),
    'carrot': ('Carrot', '500 g', 18.0),
    'garlic': ('Garlic', '250 g', 30.0),
    'lemon': ('Lemon', '250 g', 12.0),
    'spinach': ('Spinach', '1 bunch', 14.0),
  };

  static OrderItem _item(String orderId, String key, [int qty = 1]) {
    final (name, unit, price) = _products[key]!;
    return OrderItem(
      id: '$orderId-$key',
      name: name,
      unit: unit,
      quantity: qty,
      price: price,
      image: 'assets/images/products/$key.svg',
    );
  }

  static Order _order({
    required String id,
    required OrderStatus status,
    required List<(String, int)> items,
    required OrderLocation drop,
    required double km,
    required DateTime createdAt,
    bool cod = true,
    DateTime? deliveredAt,
    String? cancelReason,
  }) {
    final lines = [for (final (key, qty) in items) _item(id, key, qty)];
    return Order(
      id: id,
      status: status,
      items: lines,
      pickup: store,
      drop: drop,
      distanceKm: km,
      totalAmount: lines.fold(0, (sum, i) => sum + i.total),
      deliveryFee: (25 + km * 8).roundToDouble(),
      isCod: cod,
      createdAt: createdAt,
      deliveredAt: deliveredAt,
      cancelReason: cancelReason,
    );
  }

  static List<Order> orders(DateTime now) {
    DateTime ago(int minutes) => now.subtract(Duration(minutes: minutes));

    return [
      _order(
        id: 'TM12567',
        status: OrderStatus.newOrder,
        items: [('tomato', 1), ('onion', 1)],
        drop: const OrderLocation(
          name: 'Amit Sharma',
          address: '45, Green Park, Vadodara',
          phone: '9876501234',
          lat: 22.3180,
          lng: 73.1778,
        ),
        km: 1.2,
        createdAt: ago(12),
      ),
      _order(
        id: 'TM12566',
        status: OrderStatus.newOrder,
        items: [('potato', 1), ('chilli', 1), ('coriander', 1), ('lemon', 2)],
        drop: const OrderLocation(
          name: 'Priya Patel',
          address: 'B-302, Sun Residency, Gotri, Vadodara',
          phone: '9898012345',
          lat: 22.3135,
          lng: 73.1390,
        ),
        km: 3.5,
        createdAt: ago(20),
        cod: false,
      ),
      _order(
        id: 'TM12565',
        status: OrderStatus.newOrder,
        items: [('garlic', 1)],
        drop: const OrderLocation(
          name: 'Rahul Mehta',
          address: '7, Shanti Nagar, Akota, Vadodara',
          phone: '9727012345',
          lat: 22.2950,
          lng: 73.1665,
        ),
        km: 2.1,
        createdAt: ago(25),
      ),
      _order(
        id: 'TM12564',
        status: OrderStatus.newOrder,
        items: [('carrot', 1), ('cucumber', 1), ('spinach', 2)],
        drop: const OrderLocation(
          name: 'Sneha Desai',
          address: '22, Harni Road, Vadodara',
          phone: '9925012345',
          lat: 22.3420,
          lng: 73.1905,
        ),
        km: 4.2,
        createdAt: ago(32),
      ),
      _order(
        id: 'TM12563',
        status: OrderStatus.newOrder,
        items: [('tomato', 2), ('coriander', 1)],
        drop: const OrderLocation(
          name: 'Vikram Joshi',
          address: '11, Race Course Circle, Vadodara',
          phone: '9824598765',
          lat: 22.3075,
          lng: 73.1795,
        ),
        km: 0.9,
        createdAt: ago(41),
        cod: false,
      ),
      _order(
        id: 'TM12562',
        status: OrderStatus.accepted,
        items: [('onion', 2), ('potato', 1)],
        drop: const OrderLocation(
          name: 'Neha Shah',
          address: '18, Fatehgunj Main Road, Vadodara',
          phone: '9909012345',
          lat: 22.3245,
          lng: 73.1855,
        ),
        km: 2.4,
        createdAt: ago(48),
      ),
      _order(
        id: 'TM12561',
        status: OrderStatus.pickedUp,
        items: [('lemon', 1), ('chilli', 1), ('tomato', 1)],
        drop: const OrderLocation(
          name: 'Karan Trivedi',
          address: '5, Manjalpur, Vadodara',
          phone: '9601012345',
          lat: 22.2810,
          lng: 73.1880,
        ),
        km: 3.8,
        createdAt: ago(55),
      ),
      _order(
        id: 'TM12560',
        status: OrderStatus.delivered,
        items: [('tomato', 1), ('onion', 1)],
        drop: const OrderLocation(
          name: 'Amit Sharma',
          address: '45, Green Park, Vadodara',
          phone: '9876501234',
          lat: 22.3180,
          lng: 73.1778,
        ),
        km: 1.2,
        createdAt: ago(130),
        deliveredAt: ago(95),
      ),
      _order(
        id: 'TM12559',
        status: OrderStatus.delivered,
        items: [('potato', 2), ('garlic', 1), ('carrot', 1), ('spinach', 1)],
        drop: const OrderLocation(
          name: 'Pooja Rana',
          address: '9, Old Padra Road, Vadodara',
          phone: '9512012345',
          lat: 22.2985,
          lng: 73.1560,
        ),
        km: 3.5,
        createdAt: ago(200),
        deliveredAt: ago(170),
        cod: false,
      ),
      _order(
        id: 'TM12558',
        status: OrderStatus.cancelled,
        items: [('cucumber', 1)],
        drop: const OrderLocation(
          name: 'Harsh Vora',
          address: '31, Karelibaug, Vadodara',
          phone: '9428012345',
          lat: 22.3260,
          lng: 73.2005,
        ),
        km: 2.1,
        createdAt: ago(60 * 26),
        cancelReason: 'Customer cancelled the order',
      ),
      _order(
        id: 'TM12557',
        status: OrderStatus.delivered,
        items: [('lemon', 2), ('coriander', 1), ('chilli', 1)],
        drop: const OrderLocation(
          name: 'Riya Kapoor',
          address: '14, Nizampura, Vadodara',
          phone: '9737012345',
          lat: 22.3345,
          lng: 73.1820,
        ),
        km: 2.8,
        createdAt: ago(60 * 27),
        deliveredAt: ago(60 * 27 - 30),
      ),
      _order(
        id: 'TM12556',
        status: OrderStatus.delivered,
        items: [('tomato', 3), ('onion', 2), ('potato', 2)],
        drop: const OrderLocation(
          name: 'Manish Parikh',
          address: '3, Subhanpura, Vadodara',
          phone: '9824112233',
          lat: 22.3225,
          lng: 73.1645,
        ),
        km: 1.6,
        createdAt: ago(60 * 50),
        deliveredAt: ago(60 * 50 - 25),
      ),
    ];
  }

  static Map<String, dynamic> profile() => {
    'id': 'DP1024',
    'name': 'Rohit Kumar',
    'phone': '9876543210',
    'email': 'rohit.kumar@gmail.com',
    'city': 'Vadodara',
    'vehicle_type': 'Scooter',
    'vehicle_number': 'GJ 06 AB 1234',
    'language': 'English',
    'is_online': true,
    'rating': 4.8,
    'bank_name': 'State Bank of India',
    'bank_account': 'XXXXXXXX4521',
    'ifsc': 'SBIN0001234',
  };
}
