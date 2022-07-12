// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadModel _$DownloadModelFromJson(Map<String, dynamic> json) {
  return _DownloadModel.fromJson(json);
}

/// @nodoc
mixin _$DownloadModel {
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadModelCopyWith<DownloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadModelCopyWith<$Res> {
  factory $DownloadModelCopyWith(
          DownloadModel value, $Res Function(DownloadModel) then) =
      _$DownloadModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class _$DownloadModelCopyWithImpl<$Res>
    implements $DownloadModelCopyWith<$Res> {
  _$DownloadModelCopyWithImpl(this._value, this._then);

  final DownloadModel _value;
  // ignore: unused_field
  final $Res Function(DownloadModel) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadModelCopyWith<$Res>
    implements $DownloadModelCopyWith<$Res> {
  factory _$$_DownloadModelCopyWith(
          _$_DownloadModel value, $Res Function(_$_DownloadModel) then) =
      __$$_DownloadModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class __$$_DownloadModelCopyWithImpl<$Res>
    extends _$DownloadModelCopyWithImpl<$Res>
    implements _$$_DownloadModelCopyWith<$Res> {
  __$$_DownloadModelCopyWithImpl(
      _$_DownloadModel _value, $Res Function(_$_DownloadModel) _then)
      : super(_value, (v) => _then(v as _$_DownloadModel));

  @override
  _$_DownloadModel get _value => super._value as _$_DownloadModel;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_DownloadModel(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadModel implements _DownloadModel {
  const _$_DownloadModel(
      {@JsonKey(name: 'poster_path') required this.posterPath});

  factory _$_DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadModelFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString() {
    return 'DownloadModel(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadModel &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadModelCopyWith<_$_DownloadModel> get copyWith =>
      __$$_DownloadModelCopyWithImpl<_$_DownloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadModelToJson(this);
  }
}

abstract class _DownloadModel implements DownloadModel {
  const factory _DownloadModel(
          {@JsonKey(name: 'poster_path') required final String? posterPath}) =
      _$_DownloadModel;

  factory _DownloadModel.fromJson(Map<String, dynamic> json) =
      _$_DownloadModel.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadModelCopyWith<_$_DownloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
