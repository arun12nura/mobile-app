// ignore_for_file: must_be_immutable

part of 'computer_vendor_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ComputerVendorDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ComputerVendorDetailsEvent extends Equatable {}

/// Event that is dispatched when the ComputerVendorDetails widget is first created.
class ComputerVendorDetailsInitialEvent extends ComputerVendorDetailsEvent {
  @override
  List<Object?> get props => [];
}
