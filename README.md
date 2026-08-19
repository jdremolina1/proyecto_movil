# mi_primer_app

A new Flutter project.

## Modelo de reportes

- `Reporte`: entidad principal, identificada por `id`.
- `Ubicacion`: objeto de valor comparado por contenido.
- `EstadoReporte`: jerarquía sellada con estados y datos propios.

`Reporte` usa Freezed para generar `copyWith`, igualdad y `hashCode`. La
serialización JSON permanece escrita a mano para conservar validaciones con
`CampoInvalido`, que identifica el campo exacto cuando el JSON es inválido.

## Cómo ejecutar

```text
flutter pub get
flutter test
flutter run
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
