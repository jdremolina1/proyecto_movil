import 'package:mi_primer_app/core/json.dart';

sealed class EstadoReporte {
  const EstadoReporte();

  String get etiqueta;

  bool get sePuedeEditar;

  factory EstadoReporte.fromJson(Map<String, dynamic> json) {
    final tipo = leerTexto(json, 'tipo');

    switch (tipo) {
      case 'borrador':
        return const Borrador();

      case 'enviado':
        return Enviado(enviadoEn: leerFecha(json, 'enviadoEn'));

      case 'en_revision':
        return EnRevision(asignadoA: leerTexto(json, 'asignadoA'));

      case 'resuelto':
        return Resuelto(
          resueltoEn: leerFecha(json, 'resueltoEn'),
          evidencia: leerTextos(json, 'evidencia'),
        );

      case 'rechazado':
        return Rechazado(motivo: leerTexto(json, 'motivo'));

      default:
        throw CampoInvalido('tipo', 'estado de reporte desconocido', tipo);
    }
  }

  Map<String, dynamic> toJson();
}

class Borrador extends EstadoReporte {
  const Borrador();

  @override
  String get etiqueta => 'Borrador';

  @override
  bool get sePuedeEditar => true;

  @override
  Map<String, dynamic> toJson() => {'tipo': 'borrador'};

  @override
  bool operator ==(Object other) => identical(this, other) || other is Borrador;

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() => 'Borrador';
}

class Enviado extends EstadoReporte {
  const Enviado({required this.enviadoEn});

  final DateTime enviadoEn;

  @override
  String get etiqueta => 'Enviado';

  @override
  bool get sePuedeEditar => false;

  @override
  Map<String, dynamic> toJson() => {
    'tipo': 'enviado',
    'enviadoEn': enviadoEn.toUtc().toIso8601String(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Enviado && other.enviadoEn == enviadoEn;

  @override
  int get hashCode => Object.hash(runtimeType, enviadoEn);

  @override
  String toString() => 'Enviado($enviadoEn)';
}

class EnRevision extends EstadoReporte {
  const EnRevision({required this.asignadoA});

  final String asignadoA;

  @override
  String get etiqueta => 'En revisión';

  @override
  bool get sePuedeEditar => false;

  @override
  Map<String, dynamic> toJson() => {
    'tipo': 'en_revision',
    'asignadoA': asignadoA,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnRevision && other.asignadoA == asignadoA;

  @override
  int get hashCode => Object.hash(runtimeType, asignadoA);

  @override
  String toString() => 'EnRevision($asignadoA)';
}

class Resuelto extends EstadoReporte {
  const Resuelto({required this.resueltoEn, required this.evidencia});

  final DateTime resueltoEn;
  final List<String> evidencia;

  @override
  String get etiqueta => 'Resuelto';

  @override
  bool get sePuedeEditar => false;

  @override
  Map<String, dynamic> toJson() => {
    'tipo': 'resuelto',
    'resueltoEn': resueltoEn.toUtc().toIso8601String(),
    'evidencia': evidencia,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Resuelto &&
          other.resueltoEn == resueltoEn &&
          _listasIguales(other.evidencia, evidencia);

  @override
  int get hashCode =>
      Object.hash(runtimeType, resueltoEn, Object.hashAll(evidencia));

  @override
  String toString() => 'Resuelto($resueltoEn)';
}

class Rechazado extends EstadoReporte {
  const Rechazado({required this.motivo});

  final String motivo;

  @override
  String get etiqueta => 'Rechazado: $motivo';

  @override
  bool get sePuedeEditar => true;

  @override
  Map<String, dynamic> toJson() => {'tipo': 'rechazado', 'motivo': motivo};

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Rechazado && other.motivo == motivo;

  @override
  int get hashCode => Object.hash(runtimeType, motivo);

  @override
  String toString() => 'Rechazado($motivo)';
}

bool _listasIguales<T>(List<T> a, List<T> b) {
  if (identical(a, b)) return true;

  if (a.length != b.length) return false;

  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }

  return true;
}
