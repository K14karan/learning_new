class SubCategoryModel{
  final String image;
  final String productName;
  final String price;
  final String quantity;
  final String discount;
  final String off;
  SubCategoryModel(
      {required this.image,
      required this.productName,
      required this.price,
      required this.quantity,
      required this.discount,
      required this.off});
}

///  ///
class RemarksModel {
 final String months;
  RemarksModel({
    required this.months,
  });
}

List<RemarksModel>monthData=[
RemarksModel(months: "Jan"),
  RemarksModel(months: "Feb"),
  RemarksModel(months: "March"),
  RemarksModel(months: "May"),
  RemarksModel(months: "April"),
  RemarksModel(months: "Jun"),
  RemarksModel(months: "July"),
  RemarksModel(months: "August"),
  RemarksModel(months: "September"),
  RemarksModel(months: "October"),
  RemarksModel(months: "November"),
  RemarksModel(months: "December"),


];
