// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reporte.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Reporte {

 String get id; String get titulo; String get descripcion; Ubicacion get ubicacion; DateTime get creadoEn; EstadoReporte get estado; List<String> get fotos;
/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReporteCopyWith<Reporte> get copyWith => _$ReporteCopyWithImpl<Reporte>(this as Reporte, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reporte&&(identical(other.id, id) || other.id == id)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.ubicacion, ubicacion) || other.ubicacion == ubicacion)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other.fotos, fotos));
}


@override
int get hashCode => Object.hash(runtimeType,id,titulo,descripcion,ubicacion,creadoEn,estado,const DeepCollectionEquality().hash(fotos));

@override
String toString() {
  return 'Reporte(id: $id, titulo: $titulo, descripcion: $descripcion, ubicacion: $ubicacion, creadoEn: $creadoEn, estado: $estado, fotos: $fotos)';
}


}

/// @nodoc
abstract mixin class $ReporteCopyWith<$Res>  {
  factory $ReporteCopyWith(Reporte value, $Res Function(Reporte) _then) = _$ReporteCopyWithImpl;
@useResult
$Res call({
 String id, String titulo, String descripcion, Ubicacion ubicacion, DateTime creadoEn, EstadoReporte estado, List<String> fotos
});




}
/// @nodoc
class _$ReporteCopyWithImpl<$Res>
    implements $ReporteCopyWith<$Res> {
  _$ReporteCopyWithImpl(this._self, this._then);

  final Reporte _self;
  final $Res Function(Reporte) _then;

/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? titulo = null,Object? descripcion = null,Object? ubicacion = null,Object? creadoEn = null,Object? estado = null,Object? fotos = null,}) {
  return _then(Reporte(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,titulo: null == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,ubicacion: null == ubicacion ? _self.ubicacion : ubicacion // ignore: cast_nullable_to_non_nullable
as Ubicacion,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoReporte,fotos: null == fotos ? _self.fotos : fotos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Reporte].
extension ReportePatterns on Reporte {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reporte value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reporte() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reporte value)  $default,){
final _that = this;
switch (_that) {
case _Reporte():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reporte value)?  $default,){
final _that = this;
switch (_that) {
case _Reporte() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String titulo,  String descripcion,  Ubicacion ubicacion,  DateTime creadoEn,  EstadoReporte estado,  List<String> fotos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reporte() when $default != null:
return $default(_that.id,_that.titulo,_that.descripcion,_that.ubicacion,_that.creadoEn,_that.estado,_that.fotos);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String titulo,  String descripcion,  Ubicacion ubicacion,  DateTime creadoEn,  EstadoReporte estado,  List<String> fotos)  $default,) {final _that = this;
switch (_that) {
case _Reporte():
return $default(_that.id,_that.titulo,_that.descripcion,_that.ubicacion,_that.creadoEn,_that.estado,_that.fotos);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String titulo,  String descripcion,  Ubicacion ubicacion,  DateTime creadoEn,  EstadoReporte estado,  List<String> fotos)?  $default,) {final _that = this;
switch (_that) {
case _Reporte() when $default != null:
return $default(_that.id,_that.titulo,_that.descripcion,_that.ubicacion,_that.creadoEn,_that.estado,_that.fotos);case _:
  return null;

}
}

}

/// @nodoc


class _Reporte extends Reporte {
  const _Reporte({required this.id, required this.titulo, required this.descripcion, required this.ubicacion, required this.creadoEn, required this.estado,  List<String> fotos = const <String>[]}): _fotos = fotos,super._();
  

@override final  String id;
@override final  String titulo;
@override final  String descripcion;
@override final  Ubicacion ubicacion;
@override final  DateTime creadoEn;
@override final  EstadoReporte estado;
 final  List<String> _fotos;
@override@JsonKey() List<String> get fotos {
  if (_fotos is EqualUnmodifiableListView) return _fotos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fotos);
}


/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReporteCopyWith<_Reporte> get copyWith => __$ReporteCopyWithImpl<_Reporte>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reporte&&(identical(other.id, id) || other.id == id)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.ubicacion, ubicacion) || other.ubicacion == ubicacion)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other._fotos, _fotos));
}


@override
int get hashCode => Object.hash(runtimeType,id,titulo,descripcion,ubicacion,creadoEn,estado,const DeepCollectionEquality().hash(_fotos));

@override
String toString() {
  return 'Reporte(id: $id, titulo: $titulo, descripcion: $descripcion, ubicacion: $ubicacion, creadoEn: $creadoEn, estado: $estado, fotos: $fotos)';
}


}

/// @nodoc
abstract mixin class _$ReporteCopyWith<$Res> implements $ReporteCopyWith<$Res> {
  factory _$ReporteCopyWith(_Reporte value, $Res Function(_Reporte) _then) = __$ReporteCopyWithImpl;
@override @useResult
$Res call({
 String id, String titulo, String descripcion, Ubicacion ubicacion, DateTime creadoEn, EstadoReporte estado, List<String> fotos
});




}
/// @nodoc
class __$ReporteCopyWithImpl<$Res>
    implements _$ReporteCopyWith<$Res> {
  __$ReporteCopyWithImpl(this._self, this._then);

  final _Reporte _self;
  final $Res Function(_Reporte) _then;

/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? titulo = null,Object? descripcion = null,Object? ubicacion = null,Object? creadoEn = null,Object? estado = null,Object? fotos = null,}) {
  return _then(_Reporte(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,titulo: null == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,ubicacion: null == ubicacion ? _self.ubicacion : ubicacion // ignore: cast_nullable_to_non_nullable
as Ubicacion,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoReporte,fotos: null == fotos ? _self._fotos : fotos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
