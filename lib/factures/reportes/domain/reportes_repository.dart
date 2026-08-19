import 'package:mi_primer_app/factures/reportes/domain/reporte.dart';

abstract interface class ReportesRepository {
  Future<List<Reporte>> obtenerTodos();

  Future<Reporte?> obtenerPorId(String id);
}
