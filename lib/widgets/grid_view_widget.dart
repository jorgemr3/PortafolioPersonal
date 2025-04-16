// import 'package:flutter/material.dart';
// import '../utils/custom_grid_delegate.dart';
// import '../models/imagen_model.dart';

// class GridViewWidget extends StatelessWidget {
//   const GridViewWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       gridDelegate: const CustomGridDelegate(
//         crossAxisCount: 2,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//       ),
//       itemCount: imagenes.length,
//       itemBuilder: (context, index) {
//         return Card(
//           child: Column(
//             children: [
//               Expanded(
//                 child: Image.network(
//                   imagenes[index].url,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(imagenes[index].titulo),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }