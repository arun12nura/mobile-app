// ignore_for_file: must_be_immutable

part of 'change_locatoin_page_bloc.dart';

/// Represents the state of ChangeLocatoinPage in the application.
class ChangeLocatoinPageState extends Equatable {
  ChangeLocatoinPageState({
    this.searchController,
    this.changeLocatoinPageModelObj,
  });

  TextEditingController? searchController;

  ChangeLocatoinPageModel? changeLocatoinPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        changeLocatoinPageModelObj,
      ];
  ChangeLocatoinPageState copyWith({
    TextEditingController? searchController,
    ChangeLocatoinPageModel? changeLocatoinPageModelObj,
  }) {
    return ChangeLocatoinPageState(
      searchController: searchController ?? this.searchController,
      changeLocatoinPageModelObj:
          changeLocatoinPageModelObj ?? this.changeLocatoinPageModelObj,
    );
  }
}
