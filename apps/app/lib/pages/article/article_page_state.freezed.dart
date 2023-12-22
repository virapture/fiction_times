// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticlePageState {
  AsyncValue<Article> get article => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticlePageStateCopyWith<ArticlePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlePageStateCopyWith<$Res> {
  factory $ArticlePageStateCopyWith(
          ArticlePageState value, $Res Function(ArticlePageState) then) =
      _$ArticlePageStateCopyWithImpl<$Res, ArticlePageState>;
  @useResult
  $Res call({AsyncValue<Article> article});
}

/// @nodoc
class _$ArticlePageStateCopyWithImpl<$Res, $Val extends ArticlePageState>
    implements $ArticlePageStateCopyWith<$Res> {
  _$ArticlePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_value.copyWith(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticlePageStateImplCopyWith<$Res>
    implements $ArticlePageStateCopyWith<$Res> {
  factory _$$ArticlePageStateImplCopyWith(_$ArticlePageStateImpl value,
          $Res Function(_$ArticlePageStateImpl) then) =
      __$$ArticlePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<Article> article});
}

/// @nodoc
class __$$ArticlePageStateImplCopyWithImpl<$Res>
    extends _$ArticlePageStateCopyWithImpl<$Res, _$ArticlePageStateImpl>
    implements _$$ArticlePageStateImplCopyWith<$Res> {
  __$$ArticlePageStateImplCopyWithImpl(_$ArticlePageStateImpl _value,
      $Res Function(_$ArticlePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$ArticlePageStateImpl(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Article>,
    ));
  }
}

/// @nodoc

class _$ArticlePageStateImpl implements _ArticlePageState {
  const _$ArticlePageStateImpl(
      {this.article = const AsyncValue<Article>.loading()});

  @override
  @JsonKey()
  final AsyncValue<Article> article;

  @override
  String toString() {
    return 'ArticlePageState(article: $article)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlePageStateImpl &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlePageStateImplCopyWith<_$ArticlePageStateImpl> get copyWith =>
      __$$ArticlePageStateImplCopyWithImpl<_$ArticlePageStateImpl>(
          this, _$identity);
}

abstract class _ArticlePageState implements ArticlePageState {
  const factory _ArticlePageState({final AsyncValue<Article> article}) =
      _$ArticlePageStateImpl;

  @override
  AsyncValue<Article> get article;
  @override
  @JsonKey(ignore: true)
  _$$ArticlePageStateImplCopyWith<_$ArticlePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
