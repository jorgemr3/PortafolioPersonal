# Portafolio Personal

Una aplicación Flutter que demuestra un portafolio de imágenes interactivo con transiciones animadas.

## Características

- GridView responsivo con imágenes aleatorias
- Animaciones suaves de transición entre vistas
- Interfaz de usuario intuitiva con botón flotante para mostrar/ocultar el grid
- Vista detallada de imágenes individuales
- Diseño moderno con tarjetas y efectos de elevación

## Tecnologías utilizadas

- Flutter
- Paquete de animaciones de Flutter
- API de Picsum Photos para imágenes aleatorias

## Cómo ejecutar

1. Asegúrate de tener Flutter instalado en tu sistema
2. Clona este repositorio
3. Ejecuta `flutter pub get` para instalar las dependencias
4. Ejecuta `flutter run` para iniciar la aplicación

## Estructura del proyecto

El proyecto utiliza una arquitectura simple:

- `lib/main.dart`: Contiene la lógica principal de la aplicación
- `lib/utils/customGridDelegate.dart`: Implementación personalizada del delegate para el grid
- `lib/models/imagen.dart`: Modelo de datos para las imágenes

## Características futuras

- Implementación de autenticación local
- Capacidad para guardar y consultar imagenes de firebase
- Filtros y categorías para las imágenes
- Modo oscuro
