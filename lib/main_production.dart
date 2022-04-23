// Copyright (c) 2022, Adryan Eka Vandra
// https://github.com/adryanev
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:weather/app/app.dart';
import 'package:weather/bootstrap.dart';
import 'package:weather/core/utils/constants.dart';

void main() {
  bootstrap(() => const App(), environment: envStg);
}
