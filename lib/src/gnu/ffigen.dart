// ignore_for_file: non_positive_array_dimension, unused_field, type=lint

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// GNU C Library
class GnuLibC {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  GnuLibC(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  GnuLibC.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Int> errno() {
    return _errno();
  }

  late final _errnoPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int> Function()>>(
          '__errno_location');
  late final _errno = _errnoPtr.asFunction<ffi.Pointer<ffi.Int> Function()>();

  int fstat(
    int __ver,
    int __fildes,
    ffi.Pointer<stat_t> __stat_buf,
  ) {
    return _fstat(
      __ver,
      __fildes,
      __stat_buf,
    );
  }

  late final _fstatPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Int, ffi.Int, ffi.Pointer<stat_t>)>>('__fxstat');
  late final _fstat =
      _fstatPtr.asFunction<int Function(int, int, ffi.Pointer<stat_t>)>();

  ffi.Pointer<passwd_t> getpwnam(
    ffi.Pointer<ffi.Char> __name,
  ) {
    return _getpwnam(
      __name,
    );
  }

  late final _getpwnamPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<passwd_t> Function(ffi.Pointer<ffi.Char>)>>('getpwnam');
  late final _getpwnam = _getpwnamPtr
      .asFunction<ffi.Pointer<passwd_t> Function(ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<passwd_t> getpwuid(
    int __uid,
  ) {
    return _getpwuid(
      __uid,
    );
  }

  late final _getpwuidPtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<passwd_t> Function(ffi.UnsignedInt)>>(
      'getpwuid');
  late final _getpwuid =
      _getpwuidPtr.asFunction<ffi.Pointer<passwd_t> Function(int)>();

  int glob(
    ffi.Pointer<ffi.Char> __pattern,
    int __flags,
    ffi.Pointer<
            ffi.NativeFunction<
                ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Int)>>
        __errfunc,
    ffi.Pointer<glob_t> __pglob,
  ) {
    return _glob(
      __pattern,
      __flags,
      __errfunc,
      __pglob,
    );
  }

  late final _globPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Char>,
              ffi.Int,
              ffi.Pointer<
                  ffi.NativeFunction<
                      ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Int)>>,
              ffi.Pointer<glob_t>)>>('glob');
  late final _glob = _globPtr.asFunction<
      int Function(
          ffi.Pointer<ffi.Char>,
          int,
          ffi.Pointer<
              ffi.NativeFunction<
                  ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Int)>>,
          ffi.Pointer<glob_t>)>();

  void globfree(
    ffi.Pointer<glob_t> __pglob,
  ) {
    return _globfree(
      __pglob,
    );
  }

  late final _globfreePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<glob_t>)>>(
          'globfree');
  late final _globfree =
      _globfreePtr.asFunction<void Function(ffi.Pointer<glob_t>)>();

  int lstat(
    int __ver,
    ffi.Pointer<ffi.Char> __filename,
    ffi.Pointer<stat_t> __stat_buf,
  ) {
    return _lstat(
      __ver,
      __filename,
      __stat_buf,
    );
  }

  late final _lstatPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Int, ffi.Pointer<ffi.Char>,
              ffi.Pointer<stat_t>)>>('__lxstat');
  late final _lstat = _lstatPtr.asFunction<
      int Function(int, ffi.Pointer<ffi.Char>, ffi.Pointer<stat_t>)>();

  ffi.Pointer<ffi.Void> mmap(
    ffi.Pointer<ffi.Void> __addr,
    int __len,
    int __prot,
    int __flags,
    int __fd,
    int __offset,
  ) {
    return _mmap(
      __addr,
      __len,
      __prot,
      __flags,
      __fd,
      __offset,
    );
  }

  late final _mmapPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, ffi.Size,
              ffi.Int, ffi.Int, ffi.Int, ffi.Long)>>('mmap');
  late final _mmap = _mmapPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, int, int, int, int, int)>();

  int munmap(
    ffi.Pointer<ffi.Void> __addr,
    int __len,
  ) {
    return _munmap(
      __addr,
      __len,
    );
  }

  late final _munmapPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Void>, ffi.Size)>>('munmap');
  late final _munmap =
      _munmapPtr.asFunction<int Function(ffi.Pointer<ffi.Void>, int)>();

  int stat(
    int __ver,
    ffi.Pointer<ffi.Char> __filename,
    ffi.Pointer<stat_t> __stat_buf,
  ) {
    return _stat(
      __ver,
      __filename,
      __stat_buf,
    );
  }

  late final _statPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Int, ffi.Pointer<ffi.Char>, ffi.Pointer<stat_t>)>>('__xstat');
  late final _stat = _statPtr.asFunction<
      int Function(int, ffi.Pointer<ffi.Char>, ffi.Pointer<stat_t>)>();

  int sysinfo(
    ffi.Pointer<sysinfo_t> __info,
  ) {
    return _sysinfo(
      __info,
    );
  }

  late final _sysinfoPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<sysinfo_t>)>>(
          'sysinfo');
  late final _sysinfo =
      _sysinfoPtr.asFunction<int Function(ffi.Pointer<sysinfo_t>)>();

  int uname(
    ffi.Pointer<utsname_t> __name,
  ) {
    return _uname(
      __name,
    );
  }

  late final _unamePtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<utsname_t>)>>(
          'uname');
  late final _uname =
      _unamePtr.asFunction<int Function(ffi.Pointer<utsname_t>)>();
}

const int ACCESSPERMS = 511;

const int ALLPERMS = 4095;

const int AT_EACCESS = 512;

const int AT_FDCWD = -100;

const int AT_REMOVEDIR = 512;

const int AT_SYMLINK_FOLLOW = 1024;

const int AT_SYMLINK_NOFOLLOW = 256;

const int BIG_ENDIAN = 4321;

const int BYTE_ORDER = 1234;

const int DEFFILEMODE = 438;

const int E2BIG = 7;

const int EACCES = 13;

const int EADDRINUSE = 98;

const int EADDRNOTAVAIL = 99;

const int EADV = 68;

const int EAFNOSUPPORT = 97;

const int EAGAIN = 11;

const int EALREADY = 114;

const int EBADE = 52;

const int EBADF = 9;

const int EBADFD = 77;

const int EBADMSG = 74;

const int EBADR = 53;

const int EBADRQC = 56;

const int EBADSLT = 57;

const int EBFONT = 59;

const int EBUSY = 16;

const int ECANCELED = 125;

const int ECHILD = 10;

const int ECHRNG = 44;

const int ECOMM = 70;

const int ECONNABORTED = 103;

const int ECONNREFUSED = 111;

const int ECONNRESET = 104;

const int EDEADLK = 35;

const int EDEADLOCK = 35;

const int EDESTADDRREQ = 89;

const int EDOM = 33;

const int EDOTDOT = 73;

const int EDQUOT = 122;

const int EEXIST = 17;

const int EFAULT = 14;

const int EFBIG = 27;

const int EHOSTDOWN = 112;

const int EHOSTUNREACH = 113;

const int EHWPOISON = 133;

const int EIDRM = 43;

const int EILSEQ = 84;

const int EINPROGRESS = 115;

const int EINTR = 4;

const int EINVAL = 22;

const int EIO = 5;

const int EISCONN = 106;

const int EISDIR = 21;

const int EISNAM = 120;

const int EKEYEXPIRED = 127;

const int EKEYREJECTED = 129;

const int EKEYREVOKED = 128;

const int EL2HLT = 51;

const int EL2NSYNC = 45;

const int EL3HLT = 46;

const int EL3RST = 47;

const int ELIBACC = 79;

const int ELIBBAD = 80;

const int ELIBEXEC = 83;

const int ELIBMAX = 82;

const int ELIBSCN = 81;

const int ELNRNG = 48;

const int ELOOP = 40;

const int EMEDIUMTYPE = 124;

const int EMFILE = 24;

const int EMLINK = 31;

const int EMSGSIZE = 90;

const int EMULTIHOP = 72;

const int ENAMETOOLONG = 36;

const int ENAVAIL = 119;

const int ENETDOWN = 100;

const int ENETRESET = 102;

const int ENETUNREACH = 101;

const int ENFILE = 23;

const int ENOANO = 55;

const int ENOBUFS = 105;

const int ENOCSI = 50;

const int ENODATA = 61;

const int ENODEV = 19;

const int ENOENT = 2;

const int ENOEXEC = 8;

const int ENOKEY = 126;

const int ENOLCK = 37;

const int ENOLINK = 67;

const int ENOMEDIUM = 123;

const int ENOMEM = 12;

const int ENOMSG = 42;

const int ENONET = 64;

const int ENOPKG = 65;

const int ENOPROTOOPT = 92;

const int ENOSPC = 28;

const int ENOSR = 63;

const int ENOSTR = 60;

const int ENOSYS = 38;

const int ENOTBLK = 15;

const int ENOTCONN = 107;

const int ENOTDIR = 20;

const int ENOTEMPTY = 39;

const int ENOTNAM = 118;

const int ENOTRECOVERABLE = 131;

const int ENOTSOCK = 88;

const int ENOTSUP = 95;

const int ENOTTY = 25;

const int ENOTUNIQ = 76;

const int ENXIO = 6;

const int EOPNOTSUPP = 95;

const int EOVERFLOW = 75;

const int EOWNERDEAD = 130;

const int EPERM = 1;

const int EPFNOSUPPORT = 96;

const int EPIPE = 32;

const int EPROTO = 71;

const int EPROTONOSUPPORT = 93;

const int EPROTOTYPE = 91;

const int ERANGE = 34;

const int EREMCHG = 78;

const int EREMOTE = 66;

const int EREMOTEIO = 121;

const int ERESTART = 85;

const int ERFKILL = 132;

const int EROFS = 30;

const int ESHUTDOWN = 108;

const int ESOCKTNOSUPPORT = 94;

const int ESPIPE = 29;

const int ESRCH = 3;

const int ESRMNT = 69;

const int ESTALE = 116;

const int ESTRPIPE = 86;

const int ETIME = 62;

const int ETIMEDOUT = 110;

const int ETOOMANYREFS = 109;

const int ETXTBSY = 26;

const int EUCLEAN = 117;

const int EUNATCH = 49;

const int EUSERS = 87;

const int EWOULDBLOCK = 11;

const int EXDEV = 18;

const int EXFULL = 54;

const int EXIT_FAILURE = 1;

const int EXIT_SUCCESS = 0;

const int FAPPEND = 1024;

const int FASYNC = 8192;

const int FD_CLOEXEC = 1;

const int FD_SETSIZE = 1024;

const int FFSYNC = 1052672;

const int FNDELAY = 2048;

const int FNM_CASEFOLD = 16;

const int FNM_EXTMATCH = 32;

const int FNM_FILE_NAME = 1;

const int FNM_LEADING_DIR = 8;

const int FNM_NOESCAPE = 2;

const int FNM_NOMATCH = 1;

const int FNM_PATHNAME = 1;

const int FNM_PERIOD = 4;

const int FNONBLOCK = 2048;

const String FSTAB = '/etc/fstab';

const String FSTAB_RO = 'ro';

const String FSTAB_RQ = 'rq';

const String FSTAB_RW = 'rw';

const String FSTAB_SW = 'sw';

const String FSTAB_XX = 'xx';

const int F_DUPFD = 0;

const int F_DUPFD_CLOEXEC = 1030;

const int F_EXLCK = 4;

const int F_GETFD = 1;

const int F_GETFL = 3;

const int F_GETLK = 5;

const int F_GETLK64 = 5;

const int F_GETOWN = 9;

const int F_LOCK = 1;

const int F_OK = 0;

const int F_RDLCK = 0;

const int F_SETFD = 2;

const int F_SETFL = 4;

const int F_SETLK = 6;

const int F_SETLK64 = 6;

const int F_SETLKW = 7;

const int F_SETLKW64 = 7;

const int F_SETOWN = 8;

const int F_SHLCK = 8;

const int F_TEST = 3;

const int F_TLOCK = 2;

const int F_ULOCK = 0;

const int F_UNLCK = 2;

const int F_WRLCK = 1;

const int GLOB_ABORTED = 2;

const int GLOB_ALTDIRFUNC = 512;

const int GLOB_APPEND = 32;

const int GLOB_BRACE = 1024;

const int GLOB_DOOFFS = 8;

const int GLOB_ERR = 1;

const int GLOB_MAGCHAR = 256;

const int GLOB_MARK = 2;

const int GLOB_NOCHECK = 16;

const int GLOB_NOESCAPE = 64;

const int GLOB_NOMAGIC = 2048;

const int GLOB_NOMATCH = 3;

const int GLOB_NOSORT = 4;

const int GLOB_NOSPACE = 1;

const int GLOB_NOSYS = 4;

const int GLOB_ONLYDIR = 8192;

const int GLOB_PERIOD = 128;

const int GLOB_TILDE = 4096;

const int GLOB_TILDE_CHECK = 16384;

const int LITTLE_ENDIAN = 1234;

const int LOCK_EX = 2;

const int LOCK_NB = 4;

const int LOCK_SH = 1;

const int LOCK_UN = 8;

const int LOG_ALERT = 1;

const int LOG_AUTH = 32;

const int LOG_AUTHPRIV = 80;

const int LOG_CONS = 2;

const int LOG_CRIT = 2;

const int LOG_CRON = 72;

const int LOG_DAEMON = 24;

const int LOG_DEBUG = 7;

const int LOG_EMERG = 0;

const int LOG_ERR = 3;

const int LOG_FACMASK = 1016;

const int LOG_FTP = 88;

const int LOG_INFO = 6;

const int LOG_KERN = 0;

const int LOG_LOCAL0 = 128;

const int LOG_LOCAL1 = 136;

const int LOG_LOCAL2 = 144;

const int LOG_LOCAL3 = 152;

const int LOG_LOCAL4 = 160;

const int LOG_LOCAL5 = 168;

const int LOG_LOCAL6 = 176;

const int LOG_LOCAL7 = 184;

const int LOG_LPR = 48;

const int LOG_MAIL = 16;

const int LOG_NDELAY = 8;

const int LOG_NEWS = 56;

const int LOG_NFACILITIES = 24;

const int LOG_NOTICE = 5;

const int LOG_NOWAIT = 16;

const int LOG_ODELAY = 4;

const int LOG_PERROR = 32;

const int LOG_PID = 1;

const int LOG_PRIMASK = 7;

const int LOG_SYSLOG = 40;

const int LOG_USER = 8;

const int LOG_UUCP = 64;

const int LOG_WARNING = 4;

const int L_INCR = 1;

const int L_SET = 0;

const int L_XTND = 2;

const int MADV_DODUMP = 17;

const int MADV_DOFORK = 11;

const int MADV_DONTDUMP = 16;

const int MADV_DONTFORK = 10;

const int MADV_DONTNEED = 4;

const int MADV_FREE = 8;

const int MADV_HUGEPAGE = 14;

const int MADV_HWPOISON = 100;

const int MADV_KEEPONFORK = 19;

const int MADV_MERGEABLE = 12;

const int MADV_NOHUGEPAGE = 15;

const int MADV_NORMAL = 0;

const int MADV_RANDOM = 1;

const int MADV_REMOVE = 9;

const int MADV_SEQUENTIAL = 2;

const int MADV_UNMERGEABLE = 13;

const int MADV_WILLNEED = 3;

const int MADV_WIPEONFORK = 18;

const int MAP_32BIT = 64;

const int MAP_ANON = 32;

const int MAP_ANONYMOUS = 32;

const int MAP_DENYWRITE = 2048;

const int MAP_EXECUTABLE = 4096;

const int MAP_FILE = 0;

const int MAP_FIXED = 16;

const int MAP_GROWSDOWN = 256;

const int MAP_HUGETLB = 262144;

const int MAP_HUGE_MASK = 63;

const int MAP_HUGE_SHIFT = 26;

const int MAP_LOCKED = 8192;

const int MAP_NONBLOCK = 65536;

const int MAP_NORESERVE = 16384;

const int MAP_POPULATE = 32768;

const int MAP_PRIVATE = 2;

const int MAP_SHARED = 1;

const int MAP_STACK = 131072;

const int MAP_TYPE = 15;

const int MCL_CURRENT = 1;

const int MCL_FUTURE = 2;

const int MCL_ONFAULT = 4;

const int MS_ASYNC = 1;

const int MS_INVALIDATE = 2;

const int MS_SYNC = 4;

const int NFDBITS = 64;

const int NSS_BUFLEN_PASSWD = 1024;

const int NULL = 0;

const int O_ACCMODE = 3;

const int O_APPEND = 1024;

const int O_ASYNC = 8192;

const int O_CLOEXEC = 524288;

const int O_CREAT = 64;

const int O_DIRECTORY = 65536;

const int O_DSYNC = 4096;

const int O_EXCL = 128;

const int O_FSYNC = 1052672;

const int O_NDELAY = 2048;

const int O_NOCTTY = 256;

const int O_NOFOLLOW = 131072;

const int O_NONBLOCK = 2048;

const int O_RDONLY = 0;

const int O_RDWR = 2;

const int O_RSYNC = 1052672;

const int O_SYNC = 1052672;

const int O_TRUNC = 512;

const int O_WRONLY = 1;

const int PDP_ENDIAN = 3412;

const int POLLERR = 8;

const int POLLHUP = 16;

const int POLLIN = 1;

const int POLLNVAL = 32;

const int POLLOUT = 4;

const int POLLPRI = 2;

const int POLLRDBAND = 128;

const int POLLRDNORM = 64;

const int POLLWRBAND = 512;

const int POLLWRNORM = 256;

const int POSIX_FADV_DONTNEED = 4;

const int POSIX_FADV_NOREUSE = 5;

const int POSIX_FADV_NORMAL = 0;

const int POSIX_FADV_RANDOM = 1;

const int POSIX_FADV_SEQUENTIAL = 2;

const int POSIX_FADV_WILLNEED = 3;

const int POSIX_MADV_DONTNEED = 4;

const int POSIX_MADV_NORMAL = 0;

const int POSIX_MADV_RANDOM = 1;

const int POSIX_MADV_SEQUENTIAL = 2;

const int POSIX_MADV_WILLNEED = 3;

const int PROT_EXEC = 4;

const int PROT_GROWSDOWN = 16777216;

const int PROT_GROWSUP = 33554432;

const int PROT_NONE = 0;

const int PROT_READ = 1;

const int PROT_WRITE = 2;

const int RAND_MAX = 2147483647;

const int R_OK = 4;

const int SEEK_CUR = 1;

const int SEEK_END = 2;

const int SEEK_SET = 0;

const int SI_LOAD_SHIFT = 16;

const int STAT_VER = 1;

const int STDERR_FILENO = 2;

const int STDIN_FILENO = 0;

const int STDOUT_FILENO = 1;

const int SYS_NMLN = 65;

const int S_BLKSIZE = 512;

const int S_IEXEC = 64;

const int S_IFBLK = 24576;

const int S_IFCHR = 8192;

const int S_IFDIR = 16384;

const int S_IFIFO = 4096;

const int S_IFLNK = 40960;

const int S_IFMT = 61440;

const int S_IFREG = 32768;

const int S_IFSOCK = 49152;

const int S_IREAD = 256;

const int S_IRGRP = 32;

const int S_IROTH = 4;

const int S_IRUSR = 256;

const int S_IRWXG = 56;

const int S_IRWXO = 7;

const int S_IRWXU = 448;

const int S_ISGID = 1024;

const int S_ISUID = 2048;

const int S_ISVTX = 512;

const int S_IWGRP = 16;

const int S_IWOTH = 2;

const int S_IWRITE = 128;

const int S_IWUSR = 128;

const int S_IXGRP = 8;

const int S_IXOTH = 1;

const int S_IXUSR = 64;

const int UTIME_NOW = 1073741823;

const int UTIME_OMIT = 1073741822;

const int UTSNAME_DOMAIN_LENGTH = 65;

const int UTSNAME_LENGTH = 65;

const int UTSNAME_MACHINE_LENGTH = 65;

const int UTSNAME_NODENAME_LENGTH = 65;

const int UTSNAME_RELEASE_LENGTH = 65;

const int UTSNAME_SYSNAME_LENGTH = 65;

const int UTSNAME_VERSION_LENGTH = 65;

const int WCONTINUED = 8;

const int WEXITED = 4;

const int WNOHANG = 1;

const int WNOWAIT = 16777216;

const int WRDE_APPEND = 2;

const int WRDE_BADCHAR = 2;

const int WRDE_BADVAL = 3;

const int WRDE_CMDSUB = 4;

const int WRDE_DOOFFS = 1;

const int WRDE_NOCMD = 4;

const int WRDE_NOSPACE = 1;

const int WRDE_REUSE = 8;

const int WRDE_SHOWERR = 16;

const int WRDE_SYNTAX = 5;

const int WRDE_UNDEF = 32;

const int WSTOPPED = 2;

const int WUNTRACED = 2;

const int W_OK = 2;

const int X_OK = 1;

class flock_t extends ffi.Struct {
  @ffi.Short()
  external int l_type;

  @ffi.Short()
  external int l_whence;

  @ffi.Long()
  external int l_start;

  @ffi.Long()
  external int l_len;

  @ffi.Int()
  external int l_pid;
}

class glob_t extends ffi.Struct {
  @ffi.UnsignedLong()
  external int gl_pathc;

  external ffi.Pointer<ffi.Pointer<ffi.Char>> gl_pathv;

  @ffi.UnsignedLong()
  external int gl_offs;

  @ffi.Int()
  external int gl_flags;

  external ffi
          .Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>
      gl_closedir;

  external ffi.Pointer<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>> gl_readdir;

  external ffi.Pointer<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Char>)>> gl_opendir;

  external ffi.Pointer<
          ffi.NativeFunction<
              ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Void>)>>
      gl_lstat;

  external ffi.Pointer<
          ffi.NativeFunction<
              ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Void>)>>
      gl_stat;
}

class passwd_t extends ffi.Struct {
  external ffi.Pointer<ffi.Char> pw_name;

  external ffi.Pointer<ffi.Char> pw_passwd;

  @ffi.UnsignedInt()
  external int pw_uid;

  @ffi.UnsignedInt()
  external int pw_gid;

  external ffi.Pointer<ffi.Char> pw_gecos;

  external ffi.Pointer<ffi.Char> pw_dir;

  external ffi.Pointer<ffi.Char> pw_shell;
}

class stat_t extends ffi.Struct {
  @ffi.UnsignedLong()
  external int st_dev;

  @ffi.UnsignedLong()
  external int st_ino;

  @ffi.UnsignedLong()
  external int st_nlink;

  @ffi.UnsignedInt()
  external int st_mode;

  @ffi.UnsignedInt()
  external int st_uid;

  @ffi.UnsignedInt()
  external int st_gid;

  @ffi.Int()
  external int __pad0;

  @ffi.UnsignedLong()
  external int st_rdev;

  @ffi.Long()
  external int st_size;

  @ffi.Long()
  external int st_blksize;

  @ffi.Long()
  external int st_blocks;

  external timespec_t st_atim;

  external timespec_t st_mtim;

  external timespec_t st_ctim;

  @ffi.Array.multi([3])
  external ffi.Array<ffi.Long> __glibc_reserved;
}

class sysinfo_t extends ffi.Struct {
  @ffi.Long()
  external int uptime;

  @ffi.Array.multi([3])
  external ffi.Array<ffi.UnsignedLong> loads;

  @ffi.UnsignedLong()
  external int totalram;

  @ffi.UnsignedLong()
  external int freeram;

  @ffi.UnsignedLong()
  external int sharedram;

  @ffi.UnsignedLong()
  external int bufferram;

  @ffi.UnsignedLong()
  external int totalswap;

  @ffi.UnsignedLong()
  external int freeswap;

  @ffi.UnsignedShort()
  external int procs;

  @ffi.UnsignedShort()
  external int pad;

  @ffi.UnsignedLong()
  external int totalhigh;

  @ffi.UnsignedLong()
  external int freehigh;

  @ffi.UnsignedInt()
  external int mem_unit;

  @ffi.Array.multi([0])
  external ffi.Array<ffi.Char> _f;
}

class timespec_t extends ffi.Struct {
  @ffi.Long()
  external int tv_sec;

  @ffi.Long()
  external int tv_nsec;
}

class utsname_t extends ffi.Struct {
  @ffi.Array.multi([65])
  external ffi.Array<ffi.Char> sysname;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Char> nodename;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Char> release;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Char> version;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Char> machine;

  @ffi.Array.multi([65])
  external ffi.Array<ffi.Char> __domainname;
}
