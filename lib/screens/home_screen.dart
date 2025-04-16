// import 'package:flutter/material.dart';
// import '../widgets/grid_view_widget.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool _showGrid = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('GridView Example'),
//         backgroundColor: Theme.of(context).primaryColor,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Presiona el botón para ver el GridView, presionalo de nuevo para ocultarlo',
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             if (_showGrid) const GridViewWidget(),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _showGrid = !_showGrid;
//           });
//         },
//         child: Icon(_showGrid ? Icons.visibility_off : Icons.remove_red_eye),
//       ),
//     );
//   }
// }