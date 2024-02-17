// ignore_for_file: must_be_immutable

part of 'laptop_vendor_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopVendorDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopVendorDetailsEvent extends Equatable {}

/// Event that is dispatched when the LaptopVendorDetails widget is first created.
class LaptopVendorDetailsInitialEvent extends LaptopVendorDetailsEvent {
  @override
  List<Object?> get props => [];
}
