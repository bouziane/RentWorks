import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class ScaffoldWithNavigationRailDestination extends StatefulWidget {
  final Widget child;
  final Function(int)? onDestinationSelectedCallback;
  const ScaffoldWithNavigationRailDestination(
      {super.key, required this.child, this.onDestinationSelectedCallback});

  @override
  State<ScaffoldWithNavigationRailDestination> createState() =>
      _ScaffoldWithNavigationRailDestinationState();
}

class _ScaffoldWithNavigationRailDestinationState
    extends State<ScaffoldWithNavigationRailDestination> {
  int _selectedIndex = 0;
  var destinations = [
    const NavigationRailDestination(
        icon: Icon(Icons.home_outlined), label: Text("Home")),
    const NavigationRailDestination(
        icon: Icon(Icons.apartment_outlined), label: Text("Immo")),
    const NavigationRailDestination(
        icon: Icon(Icons.people_outlined), label: Text("Locataire")),
    const NavigationRailDestination(
        icon: Icon(Icons.assignment_outlined), label: Text("Contrats")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RentWorks"),
      ),
      body: AdaptiveLayout(
        internalAnimations: false,
        primaryNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.medium: SlotLayout.from(
            key: const Key("menu"),
            builder: (context) {
              return AdaptiveScaffold.standardNavigationRail(
                width: 90,
                selectedIndex: _selectedIndex,
                labelType: NavigationRailLabelType.selected,
                onDestinationSelected: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  if (widget.onDestinationSelectedCallback != null) {
                    widget.onDestinationSelectedCallback!(index);
                  }
                },
                destinations: destinations,
              );
            },
          ),
          Breakpoints.large: SlotLayout.from(
            key: const Key("menu-large"),
            builder: (context) {
              return AdaptiveScaffold.standardNavigationRail(
                extended: true,
                selectedIndex: _selectedIndex,
                onDestinationSelected: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  if (widget.onDestinationSelectedCallback != null) {
                    widget.onDestinationSelectedCallback!(index);
                  }
                },
                destinations: destinations,
              );
            },
          )
        }),
        body: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.smallAndUp: SlotLayout.from(
            key: const Key('primary-body-small'),
            builder: (context) => widget.child,
          )
        }),
        bottomNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.small: SlotLayout.from(
            key: const Key("menu_bottom"),
            builder: (context) {
              return AdaptiveScaffold.standardBottomNavigationBar(
                  currentIndex: _selectedIndex,
                  onDestinationSelected: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                    if (widget.onDestinationSelectedCallback != null) {
                      widget.onDestinationSelectedCallback!(index);
                    }
                  },
                  destinations: destinations
                      .map((item) => NavigationDestination(
                          icon: item.icon, label: (item.label as Text).data!))
                      .toList());
            },
          )
        }),
      ),
    );
  }
}
