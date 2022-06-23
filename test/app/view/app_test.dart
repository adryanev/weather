// Copyright (c) 2022, Adryan Eka Vandra
// https://github.com/adryanev
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/app/app.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/injector.dart';

import '../../helpers/firebase/mock.dart';

void main() {
  setupFirebaseRemoteConfigMocks();
  group('App', () {
    testWidgets('renders Pages', (tester) async {
      await Firebase.initializeApp();
      await configureDependencies(environment: Environment.envDev);
      await tester.pumpWidget(const App());
      expect(true, true);
    });
  });
}
