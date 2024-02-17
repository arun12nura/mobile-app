// ignore_for_file: must_be_immutable

part of 'ev_bike_vendor_detailse_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvBikeVendorDetailsePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvBikeVendorDetailsePageEvent extends Equatable {}

/// Event that is dispatched when the EvBikeVendorDetailsePage widget is first created.
class EvBikeVendorDetailsePageInitialEvent
    extends EvBikeVendorDetailsePageEvent {
  @override
  List<Object?> get props => [];
}
