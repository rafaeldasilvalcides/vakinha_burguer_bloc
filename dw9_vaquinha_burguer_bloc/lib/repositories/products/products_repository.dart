import 'package:dw9_vaquinha_burguer_bloc/models/product_model.dart';

abstract class ProductsRepository {
  Future<List<ProductModel>> findAllProducts();
}