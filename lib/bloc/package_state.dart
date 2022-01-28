part of 'package_bloc.dart';

@immutable
abstract class PackageState extends Equatable {}

class Empty extends PackageState {
  @override
  List<Object?> get props => [];
}

class Loading extends PackageState {
  @override
  List<Object?> get props => [];
}

class Loaded extends PackageState {
  final List<Package> packages;

  Loaded({required this.packages});

  @override
  List<Object?> get props => [packages];
}

class Error extends PackageState {
  final String message;

  Error({required this.message});

  @override
  List<Object?> get props => [message];
}
