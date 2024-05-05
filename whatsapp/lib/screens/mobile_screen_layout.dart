import 'package:flutter/material.dart';
import 'package:whatsapp/pages/mobile/calls.dart';
import 'package:whatsapp/pages/mobile/chats.dart';
import 'package:whatsapp/pages/mobile/status.dart';
import 'package:whatsapp/utils/custom_icon_button.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  _MobileScreenLayoutState createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(letterSpacing: 1),
        ),
        elevation: 1,
        actions: [
          CustomIconButton(
            icon: Icons.search,
            onPressed: () {},
          ),
          CustomIconButton(
            icon: Icons.more_vert,
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          splashFactory: NoSplash.splashFactory,
          tabs: const [
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Chats(),
          Status(),
          Calls(),
        ],
      ),
    );
  }
}
