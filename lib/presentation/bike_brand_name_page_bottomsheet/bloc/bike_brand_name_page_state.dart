// ignore_for_file: must_be_immutable

part of 'bike_brand_name_page_bloc.dart';

/// Represents the state of BikeBrandNamePage in the application.
class BikeBrandNamePageState extends Equatable {
  BikeBrandNamePageState({
    this.radioGroup = "",
    this.brandName = "",
    this.bikeBrandNamePageModelObj,
  });

  BikeBrandNamePageModel? bikeBrandNamePageModelObj;

  String radioGroup;

  String brandName;

  @override
  List<Object?> get props => [
        radioGroup,
        brandName,
        bikeBrandNamePageModelObj,
      ];
  BikeBrandNamePageState copyWith({
    String? radioGroup,
    String? brandName,
    BikeBrandNamePageModel? bikeBrandNamePageModelObj,
  }) {
    return BikeBrandNamePageState(
      radioGroup: radioGroup ?? this.radioGroup,
      brandName: brandName ?? this.brandName,
      bikeBrandNamePageModelObj:
          bikeBrandNamePageModelObj ?? this.bikeBrandNamePageModelObj,
    );
  }
}
