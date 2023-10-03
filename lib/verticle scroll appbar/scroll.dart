import 'package:flutter/material.dart';
class ScrollableAppbar extends StatefulWidget {
  const ScrollableAppbar({Key? key}) : super(key: key);

  @override
  State<ScrollableAppbar> createState() => _ScrollableAppbarState();
}

class _ScrollableAppbarState extends State<ScrollableAppbar>with SingleTickerProviderStateMixin  {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length:5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

   return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  title:  Text('Tabs Demo'),
                  pinned: true,
                  floating: true,
                  bottom:  TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(child: Text('Flight')),
                      Tab(child: Text('Train')),
                      Tab(child: Text('Car')),
                      Tab(child: Text('Cycle')),
                      Tab(child: Text('Boat')),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: <Widget>[
                Icon(Icons.flight, size: 350),
                Icon(Icons.directions_transit, size: 350),
                Icon(Icons.directions_car, size: 350),
                Icon(Icons.directions_bike, size: 350),
                Icon(Icons.directions_boat, size: 350),
              ],
            ),
          )),
    );

}
}
