import 'dart:ffi';

import 'package:stdlibc/stdlibc.dart';
import 'package:test/test.dart';

class Fd implements Finalizable {
  static final _finalizer =
      NativeFinalizer(closePtr.cast());

  final int _fd;

  Fd(this._fd) {
    _finalizer.attach(this, _fd);
  }
}

void main() {
  test('uid', () {
    expect(getuid(), isNonNegative);
    expect(geteuid(), isNonNegative);
  });

  test('gid', () {
    expect(getgid(), isNonNegative);
    expect(getegid(), isNonNegative);
  });

  test('pid', () {
    expect(getpid(), isNonNegative);
  });

  test('sid', () {
    expect(getsid(getpid()), isNonNegative);
  });

  test('pipe', () {
    final fds = pipe();
    expect(fds, hasLength(2));
    addTearDown(() {
      close(fds[0]);
      close(fds[1]);
    });

    expect(fds[0], isPositive);
    expect(fds[1], isPositive);

    expect(write(fds[1], [1, 2, 3]), 3);
    expect(read(fds[0], 3), [1, 2, 3]);
  });

  test('closePtr', () {
    final fds = pipe();
    Fd(fds[0]);
    Fd(fds[1]);
  });

  test('dup', () {
    final fds = pipe();
    expect(fds, hasLength(2));
    addTearDown(() {
      close(fds[0]);
      close(fds[1]);
    });

    final fd0 = dup(fds[0]);
    expect(fd0, isNot(equals(fds[0])));

    final fd1 = dup(fds[1]);
    expect(fd1, isNot(equals(fds[1])));

    expect(write(fd1, [1, 2, 3]), 3);
    expect(read(fd0, 3), [1, 2, 3]);
  });
}
