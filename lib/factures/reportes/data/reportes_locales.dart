import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/factures/reportes/domain/reporte.dart';
import 'package:mi_primer_app/factures/reportes/domain/reportes_repository.dart';

typedef LectorDeAssets = Future<String> Function(String ruta);

class ReportesLocales implements ReportesRepository {
  ReportesLocales({
    LectorDeAssets? lector,
    this.ruta = 'assets/data/reportes.json',
  }) : _lector = lector ?? rootBundle.loadString;

  final LectorDeAssets _lector;
  final String ruta;
  List<Reporte>? _cache;

  @override
  Future<List<Reporte>> obtenerTodos() async {
    final guardado = _cache;
    if (guardado != null) return guardado;

    final crudo = await _lector(ruta);
    final decodificado = jsonDecode(crudo);

    if (decodificado is! List) {
      throw const CampoInvalido(
        '(raíz)',
        'el archivo debe contener una lista',
        null,
      );
    }

    final reportes = <Reporte>[];
    for (var indice = 0; indice < decodificado.length; indice++) {
      final elemento = decodificado[indice];
      if (elemento is! Map<String, dynamic>) {
        throw CampoInvalido('[$indice]', 'debe ser un objeto', elemento);
      }
      reportes.add(Reporte.fromJson(elemento));
    }

    return _cache = List<Reporte>.unmodifiable(reportes);
  }

  @override
  Future<Reporte?> obtenerPorId(String id) async {
    for (final reporte in await obtenerTodos()) {
      if (reporte.id == id) return reporte;
    }
    return null;
  }
}
