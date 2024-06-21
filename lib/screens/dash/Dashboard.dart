import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign out',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            QuickStats(),
            SizedBox(height: 20),
            Expanded(child: BookingsTabView()),
          ],
        ),
      ),
    );
  }
}

class QuickStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuickStatCard(
          label: 'all orders ',
          value: '4',
        ),
        QuickStatCard(
          label: 'Categories',
          value: '6',
          valueColor: Color.fromARGB(255, 17, 16, 16),
        ),
        QuickStatCard(
          label: 'New Clients This Month',
          value: '10',
          valueColor: Color.fromARGB(255, 7, 58, 21),
          hasArrow: true,
        ),
        QuickStatCard(
          label: 'Returning orders',
          value: '5%',
          valueColor: Colors.red,
          hasArrow: true,
        ),
      ],
    );
  }
}

class QuickStatCard extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;
  final bool hasArrow;

  QuickStatCard({
    required this.label,
    required this.value,
    this.valueColor = Colors.black,
    this.hasArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                Text(value, style: TextStyle(color: valueColor)),
                if (hasArrow)
                  Icon(
                    valueColor == Colors.green
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                    color: valueColor,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BookingsTabView extends StatefulWidget {
  @override
  _BookingsTabViewState createState() => _BookingsTabViewState();
}

class _BookingsTabViewState extends State<BookingsTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Orders'),
            Tab(text: 'Users'),
            Tab(text: 'Offer'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              BookingsList(),
              Center(child: Text('Users')),
              Center(child: Text('Offerx²')),
            ],
          ),
        ),
      ],
    );
  }
}

class BookingsList extends StatelessWidget {
  final List<Map<String, String>> bookings = [
    {
      'service': 'Jus de kiwi',
      'date': 'Mon, 31 MAI',
      'time': '9:58 PM',
    },
    {
      'service': 'Pizza hot escalope',
      'date': 'Mon, 6 Fevrier',
      'time': '8:10 PM',
    },
    {
      'service': 'Fumbwa',
      'date': 'Mon, 31 Juin',
      'time': '7:00 PM',
    },
    {
      'service': 'Fromage burger',
      'date': 'Mon, 9 janvier',
      'time': '10:00 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookings.length,
      itemBuilder: (context, index) {
        final booking = bookings[index];
        return BookingCard(
          service: booking['service']!,
          date: booking['date']!,
          time: booking['time']!,
        );
      },
    );
  }
}

class BookingCard extends StatelessWidget {
  final String service;
  final String date;
  final String time;

  BookingCard({
    required this.service,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(service),
        subtitle: Text('$date at $time'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Accept Order',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Decline', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
