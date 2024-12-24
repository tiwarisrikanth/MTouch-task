import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TabBar
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[400],
              tabs: const [
                Tab(text: "RIDES"),
                Tab(text: "STORIES"),
                Tab(text: "MARKET"),
                Tab(text: "GARAGE"),
              ],
            ),
          ),
          // Dropdown Section
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Gap(10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: "Select City",
                        items: ["Select City", "Delhi", "Mumbai", "Hyderabad"]
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          // Handle city selection
                        },
                        underline: SizedBox(),
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: "Bike Brand",
                        items: ["Bike Brand", "Harley", "Kawasaki", "Yamaha"]
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          // Handle bike brand selection
                        },
                        underline: SizedBox(),
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: "Sort by",
                        items: ["Sort by", "Popularity", "Date", "Price"]
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          // Handle sorting selection
                        },
                        underline: SizedBox(),
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ),
                  ),
                ),
                Gap(10),
              ],
            ),
          ),
          // // TabBar Content
          // Expanded(
          //   child: TabBarView(
          //     controller: _tabController,
          //     children: [
          //       Center(child: Text("Rides Tab Content")),
          //       Center(child: Text("Stories Tab Content")),
          //       Center(child: Text("Market Tab Content")),
          //       Center(child: Text("Garage Tab Content")),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
