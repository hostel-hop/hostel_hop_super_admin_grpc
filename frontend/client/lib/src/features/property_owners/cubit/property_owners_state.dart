part of 'property_owners_cubit.dart';

@immutable
sealed class PropertyOwnersState {}

final class PropertyOwnersLoading extends PropertyOwnersState {}

final class PropertyOwnersLoaded extends PropertyOwnersState {
  final List<PropertyOwner> owners;

  PropertyOwnersLoaded(this.owners);
}

final class PropertyOwnersError extends PropertyOwnersState {
  final String message;

  PropertyOwnersError(this.message);
}