import 'package:get_server/get_server.dart';
import 'package:server_lms_smuct/app/data/api/model/book_model.dart';

class HomeController extends GetxController {
  //
  // LocalStorageImplement db = LocalStorageImplement();
  List<Book> bookList = List<Book>.empty().obs;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  String get bookListToString {
    var temp = '[';
    for (var book in bookList) {
      '{'
          '"book_title":"${book.title}",'
          '"accessionNumber":"${book.accessionNumber}",'
          '"subTitle":"${book.subTitle}",'
          '"subSubTitle":"${book.subSubTitle}",'
          '"authorSurName":"${book.authorSurName}",'
          '"authorForeName":"${book.authorForeName}",'
          '"publisherPlace":"${book.publisherPlace}",'
          '"publishTime":"${book.publishTime}"'
          '}';
    }
    temp += ']';
    return temp;
  }
}
