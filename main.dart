import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return _buildMobileLayout();
          } else if (constraints.maxWidth <= 1200) {
            return _buildTabletLayout();
          } else {
            return _buildDesktopLayout();
          }
        },
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This is the mobile layout',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          Icon(Icons.phone_android, size: 64),
        ],
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This is the tablet layout',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          Icon(Icons.tablet_android, size: 64),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This is the desktop layout',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          Icon(Icons.desktop_windows, size: 64),
        ],
      ),
    );
  }
}
