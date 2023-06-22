part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends ThemeEvent {
  final int randInt;
  const ChangeThemeEvent({
    required this.randInt,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChangeThemeEvent && other.randInt == randInt;
  }

  @override
  int get hashCode => randInt.hashCode;

  @override
  String toString() => 'ChangeThemeEvent(randInt: $randInt)';
}
