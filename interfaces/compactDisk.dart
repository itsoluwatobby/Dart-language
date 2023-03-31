import 'labelled.dart';
import 'retail_item.dart';

class CompactDisk implements Labelled, RetailItem {
  String _label;
  double _price;

  CompactDisk({
    required String label,
    required double price,
  })  : _label = label,
        _price = price;

  @override
  String get label => _label;

  @override
  set label(String label) => _label = label;

  @override
  double get price => _price;

  @override
  set price(double price) => _price = price;
}
