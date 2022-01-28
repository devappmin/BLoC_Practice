part of 'package_bloc.dart';

@immutable
abstract class PackageEvent extends Equatable {}

class GetPackageEvent extends PackageEvent {
  final int pages;

  GetPackageEvent({
    required this.pages,
  });

  @override
  List<Object?> get props => [pages];
}

class AppendPackageEvent extends PackageEvent {
  final int pages;

  AppendPackageEvent({
    required this.pages,
  });

  @override
  List<Object?> get props => [pages];
}
