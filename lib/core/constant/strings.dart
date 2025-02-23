abstract class Strings {
  static const String kBaseUrl = "https://www.googleapis.com/books/v1/";
  static const String endPointforNewest =
      "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest";
  static const String endPointforFeatured =
      "volumes?Filtering=free-ebooks&q=subject:programming";
  static const String endPointforSimmilar =
      "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=relevance";
}
