import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/factures/reportes/domain/estado_reporte.dart';
import 'package:mi_primer_app/factures/reportes/domain/ubicacion.dart';

part 'reporte.freezed.dart';

@freezed
abstract class Reporte with _$Reporte {
  const factory Reporte({
    required String id,
    required String titulo,
    required String descripcion,
    required Ubicacion ubicacion,
    required DateTime creadoEn,
    required EstadoReporte estado,
    @Default(<String>[]) List<String> fotos,
  }) = _Reporte;

  const Reporte._();

  factory Reporte.fromJson(Map<String, dynamic> json) {
    return Reporte(
      id: leerTexto(json, 'id'),
      titulo: leerTexto(json, 'titulo'),
      descripcion: leerTexto(json, 'descripcion'),
      ubicacion: Ubicacion.fromJson(leerMapa(json, 'ubicacion')),
      creadoEn: leerFecha(json, 'creadoEn'),
      estado: EstadoReporte.fromJson(leerMapa(json, 'estado')),
      fotos: leerTextos(json, 'fotos'),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'titulo': titulo,
    'descripcion': descripcion,
    'ubicacion': ubicacion.toJson(),
    'creadoEn': creadoEn.toUtc().toIso8601String(),
    'estado': estado.toJson(),
    'fotos': fotos,
  };

  bool get tieneEvidencia => fotos.isNotEmpty;

  bool get sePuedeEditar => estado.sePuedeEditar;

  Duration antiguedad(DateTime ahora) => ahora.difference(creadoEn);

  bool estaVencido(DateTime ahora) =>
      antiguedad(ahora) > const Duration(days: 30);
}
