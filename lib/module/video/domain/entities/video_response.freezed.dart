// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) {
  return _VideoResponse.fromJson(json);
}

/// @nodoc
mixin _$VideoResponse {
  List<VideoModel> get results => throw _privateConstructorUsedError;
  int get resultCount => throw _privateConstructorUsedError;

  /// Serializes this VideoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) then) =
      _$VideoResponseCopyWithImpl<$Res, VideoResponse>;
  @useResult
  $Res call({List<VideoModel> results, int resultCount});
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res, $Val extends VideoResponse>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? resultCount = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoResponseImplCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$$VideoResponseImplCopyWith(
          _$VideoResponseImpl value, $Res Function(_$VideoResponseImpl) then) =
      __$$VideoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VideoModel> results, int resultCount});
}

/// @nodoc
class __$$VideoResponseImplCopyWithImpl<$Res>
    extends _$VideoResponseCopyWithImpl<$Res, _$VideoResponseImpl>
    implements _$$VideoResponseImplCopyWith<$Res> {
  __$$VideoResponseImplCopyWithImpl(
      _$VideoResponseImpl _value, $Res Function(_$VideoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? resultCount = null,
  }) {
    return _then(_$VideoResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResponseImpl implements _VideoResponse {
  const _$VideoResponseImpl(
      {required final List<VideoModel> results, required this.resultCount})
      : _results = results;

  factory _$VideoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResponseImplFromJson(json);

  final List<VideoModel> _results;
  @override
  List<VideoModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int resultCount;

  @override
  String toString() {
    return 'VideoResponse(results: $results, resultCount: $resultCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), resultCount);

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResponseImplCopyWith<_$VideoResponseImpl> get copyWith =>
      __$$VideoResponseImplCopyWithImpl<_$VideoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResponseImplToJson(
      this,
    );
  }
}

abstract class _VideoResponse implements VideoResponse {
  const factory _VideoResponse(
      {required final List<VideoModel> results,
      required final int resultCount}) = _$VideoResponseImpl;

  factory _VideoResponse.fromJson(Map<String, dynamic> json) =
      _$VideoResponseImpl.fromJson;

  @override
  List<VideoModel> get results;
  @override
  int get resultCount;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoResponseImplCopyWith<_$VideoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
