import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:personal_expenses/product.dart';
import 'package:personal_expenses/utils/urls/links.dart';

class Prodductcontroller {
  List<Data> Product = [];
  Future<void> fetchdata() async {
    final response = await http.get(Uri.parse(ApiLink.readProduct));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      produc pro = produc.fromJson(data);
      Product = pro.data ?? [];
    } else {
      throw Exception('Failed');
    }
  }

  Future<void> createProduct(String productName, String img, int qty,
      int unitPrice, int totalPrice) async {
    final response = await http.post(Uri.parse(ApiLink.createProduct),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "ProductName": productName,
          "ProductCode": DateTime.now().millisecondsSinceEpoch,
          "Img": img,
          "Qty": qty,
          "UnitPrice": unitPrice,
          "TotalPrice": totalPrice,
        }));
    if (response.statusCode == 201) {
      fetchdata();
    } else {
      throw Exception('Failed');
    }
  }

  Future<void> updateProduct(String id, String productName, String img, int qty,
      int unitPrice, int totalPrice) async {
    final response = await http.post(Uri.parse(ApiLink.updateProduct(id)),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "ProductName": productName,
          "ProductCode": DateTime.now().millisecondsSinceEpoch,
          "Img": img,
          "Qty": qty,
          "UnitPrice": unitPrice,
          "TotalPrice": totalPrice,
        }));
    if (response.statusCode == 201) {
      fetchdata();
    } else {
      throw Exception('Failed');
    }
  }
}
