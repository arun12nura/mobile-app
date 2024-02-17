// ignore_for_file: must_be_immutable

part of 'n_car_vendor_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NCarVendorDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NCarVendorDetailsEvent extends Equatable {}

/// Event that is dispatched when the NCarVendorDetails widget is first created.
class NCarVendorDetailsInitialEvent extends NCarVendorDetailsEvent {
  @override
  List<Object?> get props => [];
}
