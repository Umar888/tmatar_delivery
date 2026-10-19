enum LoadStatus {
  initial,
  loading,
  success,
  failure;

  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isFailure => this == failure;

  static bool settled(LoadStatus previous, LoadStatus current) => previous != current && current != loading;
}

enum OrderStatus {
  newOrder('new', 'New'),
  accepted('accepted', 'Accepted'),
  pickedUp('picked_up', 'Picked Up'),
  delivered('delivered', 'Completed'),
  cancelled('cancelled', 'Cancelled'),
  rejected('rejected', 'Rejected');

  const OrderStatus(this.apiValue, this.label);

  final String apiValue;
  final String label;

  static OrderStatus fromApi(String? value) => values.firstWhere((s) => s.apiValue == value, orElse: () => newOrder);

  bool get isInProgress => this == accepted || this == pickedUp;

  bool get isClosed => this == delivered || this == cancelled || this == rejected;
}

enum OrderListFilter {
  newOrders('new', 'New'),
  inProgress('in_progress', 'In Progress'),
  history('history', 'Completed');

  const OrderListFilter(this.apiValue, this.label);

  final String apiValue;
  final String label;
}

enum HistoryFilter {
  all('all', 'All'),
  completed('completed', 'Completed'),
  cancelled('cancelled', 'Cancelled');

  const HistoryFilter(this.apiValue, this.label);

  final String apiValue;
  final String label;
}

enum EarningsPeriod {
  daily('daily', 'Daily'),
  weekly('weekly', 'Weekly'),
  monthly('monthly', 'Monthly');

  const EarningsPeriod(this.apiValue, this.label);

  final String apiValue;
  final String label;

  static EarningsPeriod fromApi(String? value) => values.firstWhere((p) => p.apiValue == value, orElse: () => daily);
}

enum NavigationTarget {
  pickup('pickup'),
  delivery('delivery');

  const NavigationTarget(this.queryValue);

  final String queryValue;

  static NavigationTarget fromQuery(String? value) =>
      values.firstWhere((t) => t.queryValue == value, orElse: () => pickup);
}

enum OrderAction { accept, reject, pickup, deliver }
