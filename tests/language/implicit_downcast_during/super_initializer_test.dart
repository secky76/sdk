// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class A {}

class B extends A {}

class Base {
  Base(B b);
}

class C extends Base {
  C(A a) : super(a);
  //             ^
  // [analyzer] COMPILE_TIME_ERROR.ARGUMENT_TYPE_NOT_ASSIGNABLE
  // [cfe] The argument type 'A' can't be assigned to the parameter type 'B'.
}

main() {
  A a = new B();
  new C(a);
}
