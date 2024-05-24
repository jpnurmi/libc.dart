import 'dart:ffi' as ffi;

import 'platform.dart';

void close(int fd) => platform.close(fd);
ffi.Pointer<ffi.NativeFunction<ffi.Int Function(ffi.Int)>> get closePtr =>
    platform.closePtr;
int dup(int oldfd) => platform.dup(oldfd);
int dup2(int oldfd, int newfd) => platform.dup2(oldfd, newfd);

int execv(String path, List<String> args) => platform.execv(path, args);
int execve(String path, List<String> args, Map<String, String> env) =>
    platform.execve(path, args, env);
int execvp(String path, List<String> args) => platform.execvp(path, args);

int fork() => platform.fork();

void fsync(int fd) => platform.fsync(fd);

/// Returns the effective group ID of the calling process.
int getegid() => platform.getegid();

/// Returns the effective user ID of the calling process.
int geteuid() => platform.geteuid();

/// Returns the real group ID of the calling process.
int getgid() => platform.getgid();

/// Returns the process group ID of the specified process.
int getpgid(int pid) => platform.getpgid(pid);

/// Returns the process ID (PID) of the calling process.
int getpid() => platform.getpid();

/// Returns the process ID of the parent of the calling process.
int getppid() => platform.getppid();

/// Returns the session ID of the calling process.
int getsid(int pid) => platform.getsid(pid);

/// Returns the real user ID of the calling process.
int getuid() => platform.getuid();

List<int> pipe() => platform.pipe();

List<int> pread(int fd, int count, int offset) =>
    platform.pread(fd, count, offset);

int pwrite(int fd, List<int> buffer, int offset) =>
    platform.pwrite(fd, buffer, offset);

List<int> read(int fd, int count) => platform.read(fd, count);

/// Sets the effective group ID of the calling process.
int setegid(int gid) => platform.setegid(gid);

/// Sets the effective user ID of the calling process.
int seteuid(int uid) => platform.seteuid(uid);

/// Sets the group ID of the calling process.
int setgid(int gid) => platform.setgid(gid);

/// Sets the process group ID of the specified process.
int setpgid(int pid, int pgid) => platform.setpgid(pid, pgid);

/// Sets the real group ID of the calling process.
int setregid(int rgid, int egid) => platform.setregid(rgid, egid);

/// Sets the real user ID of the calling process.
int setreuid(int ruid, int euid) => platform.setreuid(ruid, euid);

/// Creates a session and sets the process group ID.
int setsid() => platform.setsid();

/// Sets the effective user ID of the calling process.
int setuid(int uid) => platform.setuid(uid);

void sync() => platform.sync();

int unlink(String path) => platform.unlink(path);

int unlinkat(int dirfd, String path, int flags) =>
    platform.unlinkat(dirfd, path, flags);

int write(int fd, List<int> buffer) => platform.write(fd, buffer);

mixin UnistdMixin {
  void close(int fd);
  ffi.Pointer<ffi.NativeFunction<ffi.Int Function(ffi.Int)>> get closePtr;
  int dup(int oldfd);
  int dup2(int oldfd, int newfd);
  int execv(String path, List<String> args);
  int execve(String path, List<String> args, Map<String, String> env);
  int execvp(String path, List<String> args);
  int fork();
  void fsync(int fd);
  int getegid();
  int geteuid();
  int getgid();
  int getpgid(int pid);
  int getpid();
  int getppid();
  int getsid(int pid);
  int getuid();
  List<int> pipe();
  List<int> pread(int fd, int count, int offset);
  int pwrite(int fd, List<int> buffer, int offset);
  List<int> read(int fd, int count);
  int setegid(int gid);
  int seteuid(int uid);
  int setgid(int gid);
  int setpgid(int pid, int pgid);
  int setregid(int rgid, int egid);
  int setreuid(int ruid, int euid);
  int setsid();
  int setuid(int uid);
  void sync();
  int unlink(String path);
  int unlinkat(int dirfd, String path, int flags);
  int write(int fd, List<int> buffer);
}
