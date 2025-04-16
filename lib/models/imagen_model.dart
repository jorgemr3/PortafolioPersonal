class Imagen {
  final String url;
  final String titulo;

  const Imagen({
    required this.url,
    required this.titulo,
  });
}

const List<Imagen> imagenes = [
  Imagen(
    url: 'https://picsum.photos/200',
    titulo: 'Imagen 1',
  ),
  Imagen(
    url: 'https://picsum.photos/201',
    titulo: 'Imagen 2',
  ),
  Imagen(
    url: 'https://picsum.photos/202',
    titulo: 'Imagen 3',
  ),
  Imagen(
    url: 'https://picsum.photos/203',
    titulo: 'Imagen 4',
  ),
];