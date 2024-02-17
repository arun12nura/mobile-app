// ignore_for_file: must_be_immutable

part of 'n_bike_vendor_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NBikeVendorDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NBikeVendorDetailsEvent extends Equatable {}

/// Event that is dispatched when the NBikeVendorDetails widget is first created.
class NBikeVendorDetailsInitialEvent extends NBikeVendorDetailsEvent {
  @override
  List<Object?> get props => [];
}
