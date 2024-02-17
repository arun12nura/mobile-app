// ignore_for_file: must_be_immutable

part of 'referal_page_bloc.dart';

/// Represents the state of ReferalPage in the application.
class ReferalPageState extends Equatable {
  ReferalPageState({
    this.searchController,
    this.referalPageModelObj,
  });

  TextEditingController? searchController;

  ReferalPageModel? referalPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        referalPageModelObj,
      ];
  ReferalPageState copyWith({
    TextEditingController? searchController,
    ReferalPageModel? referalPageModelObj,
  }) {
    return ReferalPageState(
      searchController: searchController ?? this.searchController,
      referalPageModelObj: referalPageModelObj ?? this.referalPageModelObj,
    );
  }
}
