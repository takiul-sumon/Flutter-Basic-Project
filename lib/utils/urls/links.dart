class ApiLink {
  static String baseLink = 'http://35.73.30.144:2008/api/v1';
  static String createProduct = '$baseLink/CreateProduct';
  static String updateProduct(String id) => '$baseLink/UpdateProduct/$id';
  static String readProduct = '$baseLink/ReadProduct';
  static String readProductByt =
      '$baseLink/ReadProductById/65abeaddf211d368b013a630';
  static String deleteProduct(String id) => '$baseLink/DeleteProduct/$id';
}
