import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // Track selections for each category and brand
  Map<String, bool> categories = {
    'Eggs': true,
    'Noodles & Pasta': false,
    'Chips & Crisps': false,
    'Fast Food': false,
  };

  Map<String, bool> brands = {
    'Individual Collection': false,
    'Cocola': true,
    'Ifad': false,
    'Kazi Farmas': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ...categories.keys.map((category) => CheckboxListTile(
                    title: Text(category),
                    value: categories[category],
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        categories[category] = value!;
                      });
                    },
                  )),
              SizedBox(height: 16),
              Text("Brand", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ...brands.keys.map((brand) => CheckboxListTile(
                    title: Text(brand),
                    value: brands[brand],
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        brands[brand] = value!;
                      });
                    },
                  )),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Colors.green,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Apply filter logic here
                },
                child: Text("Apply Filter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
