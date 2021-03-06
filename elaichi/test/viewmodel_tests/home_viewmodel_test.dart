import 'package:elaichi/ui/views/home/home_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

import '../setup/test_helpers.dart';

void main() {
  setUp(() => registerServices());
  tearDown(() => unregisterServices());
  group('HomeViewmodelTest -', () {
    group('title -', () {
      test('When constructed, title should not be null', () {
        final model = HomeViewModel();
        expect(model.title != null, true);
      });
    });
    group('counter -', () {
      test('When constructed, counter should return 0', () {
        final model = HomeViewModel();
        expect(model.counter, 0);
      });

      test('When called, counter should increase', () {
        final model = HomeViewModel();
        model.updateCounter();
        expect(model.counter, 1);
      });
    });

    // group('user -', () {
    //   test('When fetchUser is called, should run task and setBusy as expected',
    //       () {
    //     final feedService = getAndRegisterFeedServiceMock();
    //     final model = HomeViewModel();
    //     model.fetchUser();
    //     when(feedService.getUser()).thenAnswer((_) => Future.value(
    //             User.fromMap({
    //           "userId": "test",
    //           "name": "John Doe",
    //           "email": "john.doe@examle.com"
    //         })));
    //     verifyInOrder(
    //         [model.setBusy(true), feedService.getUser(), model.setBusy(false)]);
    //   });
    // });
  });
}
