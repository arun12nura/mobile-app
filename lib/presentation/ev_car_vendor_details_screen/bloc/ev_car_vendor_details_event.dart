// ignore_for_file: must_be_immutable

part of 'ev_car_vendor_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvCarVendorDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvCarVendorDetailsEvent extends Equatable {}

/// Event that is dispatched when the EvCarVendorDetails widget is first created.
class EvCarVendorDetailsInitialEvent extends EvCarVendorDetailsEvent {
  @override
  List<Object?> get props => [];
}
