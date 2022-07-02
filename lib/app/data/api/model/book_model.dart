import '../core/mixin/id.dart';

class Book with ID {
  final String accessionNumber;
  final String title;
  final String subTitle;
  final String subSubTitle;
  final String authorSurName;
  final String authorForeName;
  final String category;
  final String publisherPlace;
  final String publishTime;

  Book(
    this.accessionNumber,
    this.title,
    this.subTitle,
    this.subSubTitle,
    this.authorSurName,
    this.authorForeName,
    this.category,
    this.publisherPlace,
    this.publishTime,
  );

  // Book.toJson(){
  //
  // }
}
