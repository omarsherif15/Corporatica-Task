import 'package:hive/hive.dart';
part 'cart_model.g.dart';

@HiveType(typeId: 0)
class CartModel{
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? productName;

  @HiveField(2)
  String? productPhoto;

  @HiveField(3)
  int? quantity;

  @HiveField(4)
  double? price;

  @HiveField(5)
  String? description;

  @HiveField(6)
  String? category;

  

  





  CartModel({
    required this.id,
    required this.productName,
    required this.productPhoto,
    required this.quantity,
    required this.price,
    required this.description,
    required this.category
  });

}
