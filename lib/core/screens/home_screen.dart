import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:rentworks/core/app_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.green),
    );
  }

  void _tapOnNavigationDestination(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(AppRouter.HOME_PAGE_ROUTE);
        break;
      case 1:
        context.go(AppRouter.TENANTS_ROUTE);
        break;
      case 2:
        context.go(AppRouter.REALTY_ROUTE);
        break;
      default:
    }
  }
  // NavigationRailDestination slideInNavigationItem({

  //   required IconData icon,
  //   required String label,
  // }) {
  //   return NavigationRailDestination(
  //     icon:Icon(icon),
  //     label: Text(label),
  //   );
  // }
// }
}

// class HomeScreen extends StatelessWidget {
//   final GoRouter _router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/item1',
//         builder: (
//           context,
//           state,
//         ) =>
//             ItemPage('Item 1'),
//       ),
//       GoRoute(
//         path: '/item2',
//         builder: (
//           context,
//           state,
//         ) =>
//             ItemPage('Item 2'),
//       ),
//       GoRoute(
//         path: '/item3',
//         builder: (
//           context,
//           state,
//         ) =>
//             ItemPage('Item 3'),
//       ),
//     ],
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My App'),
//         ),
//         body: Row(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 color: Colors.blueGrey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     _buildMenuItem(context, 'Item 1', '/item1'),
//                     _buildMenuItem(context, 'Item 2', '/item2'),
//                     _buildMenuItem(context, 'Item 3', '/item3'),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 3,
//               child: Text("dmfkdmlfk"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMenuItem(BuildContext context, String label, String path) {
//     return TextButton(
//       onPressed: () => _router.go(path),
//       child: Text(
//         label,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 18,
//         ),
//       ),
//     );
//   }
// }

// class ItemPage extends StatelessWidget {
//   final String _itemName;

//   ItemPage(this._itemName);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_itemName),
//       ),
//       body: Center(
//         child: Text(
//           'This is the $_itemName page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
