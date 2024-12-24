import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/constants/colors/colors.dart';
import 'package:task/widgets/cards.dart';
import 'package:task/widgets/custom_appbar.dart';
import 'package:task/widgets/cards_and_drop/drop_section.dart';
import 'package:task/widgets/cards_and_drop/model_card.dart';
import 'package:task/widgets/cards_and_drop/events_card.dart';
import 'package:task/widgets/cards_and_drop/list_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppbar(), // Custom app bar widget
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(10),
                  TripCard(), // Custom trip card widget
                  const Gap(10),
                  _buildSectionTitle('Events for you'),
                  const Gap(10),
                  MeetupCard(), // Events card
                  const Gap(10),
                  _buildTabSection(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: _RideEventCardList(), // List of ride event cards
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Builds a section title widget
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // Builds the tab section
  Widget _buildTabSection() {
    return SizedBox(
      height: 110,
      child: TabBarDemo(),
    );
  }
}

class _RideEventCardList extends StatelessWidget {
  const _RideEventCardList();

  @override
  Widget build(BuildContext context) {
    // Sample data for RideEventCard
    final sampleData = RideEventCard(
      title: 'Ride to Nandi Hills',
      riderName: 'Manish Surapaneni',
      bikeType: 'Ducati',
      coRiders: 12,
      distance: 900,
      date: '20 Jul 2019',
      location: 'Hyderabad',
      imageUrl:
          'https://images.pexels.com/photos/14459310/pexels-photo-14459310.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    );

    // List of card widgets
    final cardWidgets = [
      RideEventCard(
        title: sampleData.title,
        riderName: sampleData.riderName,
        bikeType: sampleData.bikeType,
        coRiders: sampleData.coRiders,
        distance: sampleData.distance,
        date: sampleData.date,
        location: sampleData.location,
        imageUrl: sampleData.imageUrl,
      ),
      ModernRideCard(data: sampleData),
      MinimalRideCard(data: sampleData),
      DarkRideCard(data: sampleData),
      CompactRideCard(data: sampleData),
      GradientRideCard(data: sampleData),
      MaterialRideCard(data: sampleData),
      HorizontalRideCard(data: sampleData),
      ExpandableRideCard(data: sampleData),
      AnimatedRideCard(data: sampleData),
      CustomShapedRideCard(data: sampleData),
    ];

    return Column(
      children: cardWidgets,
    );
  }
}
