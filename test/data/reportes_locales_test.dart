import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/factures/reportes/data/reportes_locales.dart';

const _json = '''
[
  {
    "id": "rep-001",
    "titulo": "Hueco en la carrera 19",
    "descripcion": "Medio metro frente al bloque C.",
    "ubicacion": {
      "latitud": 10.4631,
      "longitud": -73.2532,
      "barrio": "Centro"
    },
    "creadoEn": "2026-08-10T19:05:00Z",
    "estado": {"tipo": "borrador"}
  }
]
''';

void main() {
  test('lee la lista completa del JSON local', () async {
    final repositorio = ReportesLocales(lector: (_) async => _json);

    final reportes = await repositorio.obtenerTodos();

    expect(reportes, hasLength(1));
    expect(reportes.single.titulo, 'Hueco en la carrera 19');
  });

  test('busca por id y devuelve null si no existe', () async {
    final repositorio = ReportesLocales(lector: (_) async => _json);

    expect((await repositorio.obtenerPorId('rep-001'))?.id, 'rep-001');
    expect(await repositorio.obtenerPorId('no-existe'), isNull);
  });

  test('rechaza un archivo cuya raíz no es una lista', () async {
    final repositorio = ReportesLocales(lector: (_) async => '{"datos": []}');

    expect(repositorio.obtenerTodos(), throwsA(isA<CampoInvalido>()));
  });

  test('lee los reportes del asset declarado en pubspec', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    final repositorio = ReportesLocales(lector: rootBundle.loadString);

    expect(await repositorio.obtenerTodos(), hasLength(3));
  });
}
