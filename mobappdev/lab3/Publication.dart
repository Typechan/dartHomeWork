abstract class Publication{
  String _title = "";
  int _amountOfPages = 0;
  double _price = 0;
  String _publisherName = "";

  String get title => _title;

  int get amountOfPages => _amountOfPages;

  double get price => _price;

  String get publisherName => _publisherName;

  set publisherName(String value) {
    _publisherName = value;
  }

  set price(double value) {
    _price = value;
  }

  set amountOfPages(int value) {
    _amountOfPages = value;
  }

  set title(String value) {
    _title = value;
  }
}

class Book extends Publication{
  Book(String pubName, double price, int amountofpages, String title){
  _publisherName = pubName;
  _price = price;
  _amountOfPages = amountofpages;
  _title = title;
}
}

class Journal extends Publication{
  Journal(String pubName, double price, int amountofpages, String title){
    _publisherName = pubName;
    _price = price;
    _amountOfPages = amountofpages;
    _title = title;
  }
}

/*
  Book firstBook = new Book("Oxford University press", 1000, 100, "Fascinating nature of a Human Brain");
  Book secondBook = new Book("Sage Publications", 2000, 200, "5 Ways to achieve happiness");
  Book thirdBook = new Book("Anonymous Publications", 3000, 300, "The day when I ruined my life");
  Journal firstJournal = new Journal("Science", 4000, 400, "Neuroscience");
  Journal secondJournal = new Journal("Science", 5000, 500, "Fourier Transformation");

  List<Publication> library = new List.of({firstBook, secondBook, thirdBook, firstJournal, secondJournal}, growable: true);
  for(Publication pub in library){
    print("${pub.publisherName} price: ${pub.price} amount of pages: ${pub.amountOfPages} name of the book: ${pub.title}");
  }
*/