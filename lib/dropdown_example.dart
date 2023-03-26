import 'package:dropdown_example/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  @override
  void initState() {
    super.initState();
    Data.selectedCity = Data.cities[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1st Drop down

            DropdownButtonFormField<String>(
              value: Data.selectedCity,
              decoration: InputDecoration(
                labelText: 'City',
              ),
              items: Data.cities.map((city) {
                return DropdownMenuItem(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (String? selectedCity) {
                setState(() {
                  try {
                    Data.selectedCity = selectedCity;
                    Data.areas = Data.sectors[selectedCity!]!;
                    Data.selectedSector = null;
                    Data.selectedShop = null;
                  } catch (e) {
                    Data.selectedShop = null;
                    Data.selectedCity = null;
                    Data.selectedSector = null;
                  }
                });
              },
            ),
            SizedBox(height: 16.0),

// 2nd Drop down

            DropdownButtonFormField<String>(
              value: Data.selectedSector,
              decoration: InputDecoration(
                labelText: 'Sector',
              ),
              items: Data.areas.map((area) {
                return DropdownMenuItem(
                  value: area,
                  child: Text(area),
                );
              }).toList(),
              onChanged: (String? selectedSector) {
                setState(() {
                  try {
                    Data.selectedSector = selectedSector;
                    Data.shopAreas = Data.shops[selectedSector]!;
                    Data.selectedShop = null;
                  } catch (e) {
                    Data.selectedShop = null;
                    Data.selectedCity = null;
                    Data.selectedSector = null;
                  }
                });
              },
            ),

// 3rd Drop down

            SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: Data.selectedShop,
              decoration: InputDecoration(
                labelText: 'Shops',
              ),
              items: Data.shopAreas.map((area) {
                return DropdownMenuItem(
                  value: area,
                  child: Text(area),
                );
              }).toList(),
              onChanged: (String? selectedShop) {
                setState(() {
                  try {
                    Data.selectedShop = selectedShop;
                    // Data.shopAreas = Data.shops[selectedShop]!;
                  } catch (e) {
                    Data.selectedShop = null;
                    Data.selectedCity = null;
                    Data.selectedSector = null;
                  }
                });
              },
            ),
// ----------------------
          ],
        ),
      ),
    );
  }
}
