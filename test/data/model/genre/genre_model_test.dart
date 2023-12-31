import 'package:flutter_test/flutter_test.dart';

import '../../../core/data_provider.dart';

void main() {
  late DataProvider dataProvider;

  setUp(
    () {
      dataProvider = DataProvider();
    },
  );

  group(
    "GET_GENRES_IS_SUCCESS",
    () {
      test(
        "the data should be as expected",
        () {
          // arrange

          // act
          final actual = dataProvider.processGenresToEntity();
          final expected = dataProvider.getGenresEntity();

          // assert
          expect(actual, expected);
        },
      );

      test(
        "the genre value should be as expected json",
        () {
          // arrange

          // act
          final actual = dataProvider.getGenreItemModel().toJson();
          final expected = dataProvider.getGenreItemModelAsMap();

          // assert
          expect(actual, expected);
        },
      );

      test(
        "the data is empty",
        () {
          // arrange

          // act
          final actual = dataProvider.getEmptyListResponse();
          final expected = [];

          // assert
          expect(actual, expected);
        },
      );
    },
  );

  group(
    "GET_GENRES_IS_FAILED",
    () {
      test(
        "the data is null",
        () {
          // arrange

          // act
          final actual = dataProvider.getFailedResponse();

          // assert
          expect(actual, null);
        },
      );
    },
  );
}
