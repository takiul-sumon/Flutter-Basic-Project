import 'package:flutter/material.dart';
import 'package:personal_expenses/ProdductController.dart';

class Api_Connection extends StatefulWidget {
  const Api_Connection({super.key});

  @override
  State<Api_Connection> createState() => _Api_ConnectionState();
}

class _Api_ConnectionState extends State<Api_Connection> {
  final Prodductcontroller prodductcontroller = Prodductcontroller();
  Future<void> fetchdata() async {
    await prodductcontroller.fetchdata();
    setState(() {});
    print(prodductcontroller.Product.length);
  }

  void showAddProductDialog(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController codeController = TextEditingController();
    final TextEditingController imageController = TextEditingController();
    final TextEditingController qtyController = TextEditingController();
    final TextEditingController unitPriceController = TextEditingController();
    final TextEditingController totalPriceController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Product name")),
          TextField(
              controller: codeController,
              decoration: const InputDecoration(labelText: "Product code")),
          TextField(
              controller: imageController,
              decoration: const InputDecoration(labelText: "Product Image")),
          TextField(
              controller: qtyController,
              decoration: const InputDecoration(labelText: "Product Qty"),
              keyboardType: TextInputType.number),
          TextField(
              controller: unitPriceController,
              decoration:
                  const InputDecoration(labelText: "Product unit price"),
              keyboardType: TextInputType.number),
          TextField(
              controller: totalPriceController,
              decoration: const InputDecoration(labelText: "Total price"),
              keyboardType: TextInputType.number),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  prodductcontroller.createProduct(
                      nameController.text,
                      imageController.text,
                      int.parse(qtyController.text),
                      int.parse(unitPriceController.text),
                      int.parse(totalPriceController.text));
                  fetchdata();
                  Navigator.of(context).pop();
                });
              },
              child: Text('Add To Api'))
        ],
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Api Connection',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: prodductcontroller.Product.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: Container(
              height: 30,
              width: 30,
              color: Colors.blue,
              child: Image.network(
                  'https://inspireonline.in/cdn/shop/files/iPhone_16_Teal_PDP_Image_Position_1__en-IN_6aed3712-113a-4579-8a71-41c02aa0003c.jpg?v=1727247732&width=1445'),
            ),
            title: Text(prodductcontroller.Product[index]["ProductName"]),
            subtitle:
                Text('\$${prodductcontroller.Product[index]["UnitPrice"]}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddProductDialog(context);
        },
        child: Text("Add new"),
      ),
    );
  }
}
