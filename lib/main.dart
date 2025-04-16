import 'package:flutter/material.dart';
import 'package:local_auth_web_text/utils/customGridDelegate.dart';
import 'package:animations/animations.dart';
import 'package:local_auth_web_text/models/imagen.dart';

void main() => runApp(GridViewExampleApp());

class GridViewExampleApp extends StatefulWidget {
  const GridViewExampleApp({super.key});

  @override
  State<GridViewExampleApp> createState() => _GridViewExampleAppState();
}

class _GridViewExampleAppState extends State<GridViewExampleApp> {
  final List<int> arreglo = List.generate(100, (index) => index + 1);
  // Genera una lista de números del 1 al 100
  bool isPressed = false;
  // Variable para controlar el estado del botón flotante
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Portafolio de Imagenes (Prototipo)'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 36, 63, 85),
        ),
        // backgroundColor: Colors.grey.shade200,
        body: Center(
          child: PageTransitionSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: fadeAnimationBuilder,
            child: isPressed ? imageGridView() : contenidoPrincipal(context),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            isPressed = !isPressed;
          }),
          backgroundColor: const Color.fromARGB(255, 197, 220, 226),
          child: isPressed ? Icon(Icons.visibility_off_sharp) : Icon(Icons.visibility),
        ),
      ),
    );
  }

  Widget contenidoPrincipal(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Presiona el botón para ver el GridView, presionalo de nuevo para ocultarlo',
            style: TextStyle(fontSize: 20, color: Colors.black54),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
              'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
              'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget fadeAnimationBuilder(child, primaryAnimation, secondaryAnimation) {
    // const begin = Offset(0.0, 1.0);
    // const end = Offset.zero;
    // const curve = Curves.easeInOut;
    // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    // var offsetAnimation = primaryAnimation.drive(tween);
    return FadeThroughTransition(
      animation: primaryAnimation,
      secondaryAnimation: secondaryAnimation,
      // position: offsetAnimation,
      child: child,
    );
  }

  Padding imageGridView() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        elevation: 8.0,
        child: GridView.builder(
          padding: const EdgeInsets.all(12.0),
          gridDelegate: CustomGridDelegate(dimension: 240.0),
          itemCount: arreglo.length,
          itemBuilder: (BuildContext context, int index) {
            return OpenContainer(
              closedElevation: 0,
              openElevation: 4,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              closedColor: Colors.transparent,
              transitionDuration: const Duration(milliseconds: 600),
              closedBuilder: (context, openContainer) {
                return GridTile(
                  header: GridTileBar(
                    title: Text(arreglo[index].toString(),
                        style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w900, fontSize: 17)),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(12.0),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      gradient: const RadialGradient(
                        colors: [Color(0x0F88EEFF), Color(0x2F0099BB)],
                      ),
                    ),
                    child: Image.network(
                      'https://picsum.photos/500/300?random=${arreglo[index]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              openBuilder: (context, closeContainer) {
                return detailedMainView(index);
              },
            );
          },
        ),
      ),
    );
  }

  Widget detailedMainView(int index) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagen ${arreglo[index]}',
            style: TextStyle(color: Colors.white60)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 36, 63, 85),
      ),
      body: detailedItemView(index),
    );
  }

  Widget detailedItemView(int index) {
    return Center(
      child: Column(
        spacing: 8,
        children: [
          SizedBox(height: 10,),
          imageItem(index, arreglo),
          Text(
            'Imagen desplegada',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          ]),
    );
  }
}
