import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw9_vaquinha_burguer_bloc/core/exeptions/repository_exeption.dart';
import 'package:dw9_vaquinha_burguer_bloc/core/rest_client/custom_dio.dart';
import 'package:dw9_vaquinha_burguer_bloc/models/product_model.dart';
import 'package:dw9_vaquinha_burguer_bloc/repositories/products/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustomDio dio;

  ProductsRepositoryImpl({required this.dio});
  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get('/products');
    return result.data
        .map<ProductModel>(
          (p) => ProductModel.fromMap(p),
        )
        .tolist;
    } on DioException catch (e, s) {
      log('Erro ao busca produto', error: e, stackTrace: s);
      throw RepositoryExeption(massage: 'Erro ao busca Produto');
    }
    
  }
}
