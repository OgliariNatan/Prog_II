# 1 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.c"
# 1 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos//"
# 1 "<command-line>"
# 1 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.c"
# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 1 3
# 19 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/_mingw.h" 1 3
# 32 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/_mingw.h" 3
       
# 33 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/_mingw.h" 3
# 20 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 2 3






# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stddef.h" 1 3 4
# 213 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 325 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 354 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stddef.h" 3 4
typedef short unsigned int wint_t;
# 27 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 2 3

# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stdarg.h" 1 3 4
# 40 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 29 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 2 3
# 129 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
typedef struct _iobuf
{
 char* _ptr;
 int _cnt;
 char* _base;
 int _flag;
 int _file;
 int _charbuf;
 int _bufsiz;
 char* _tmpfname;
} FILE;
# 154 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
extern __attribute__ ((__dllimport__)) FILE _iob[];
# 169 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) freopen (const char*, const char*, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fflush (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fclose (FILE*);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) remove (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rename (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpfile (void);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpnam (char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _unlink (const char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) unlink (const char*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setvbuf (FILE*, char*, int, size_t);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setbuf (FILE*, char*);
# 204 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vfprintf(FILE*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vprintf(const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsprintf(char*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsnprintf(char*, size_t, const char*, __gnuc_va_list);
# 293 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fprintf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) printf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sprintf (char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfprintf (FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vprintf (const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsprintf (char*, const char*, __gnuc_va_list);
# 308 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_fprintf(FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_printf(const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_sprintf(char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vfprintf(FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vprintf(const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vsprintf(char*, const char*, __gnuc_va_list);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snprintf (char*, size_t, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnprintf (char*, size_t, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscprintf (const char*, __gnuc_va_list);
# 331 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snprintf (char *, size_t, const char *, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnprintf (char *, size_t, const char *, __gnuc_va_list);

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vscanf (const char * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfscanf (FILE * __restrict__, const char * __restrict__,
       __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsscanf (const char * __restrict__,
       const char * __restrict__, __gnuc_va_list);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fscanf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) scanf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sscanf (const char*, const char*, ...);




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetc (FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgets (char*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputc (int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputs (const char*, FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gets (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) puts (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetc (int, FILE*);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filbuf (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flsbuf (int, FILE*);



extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getc (FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putc (int __c, FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
# 412 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fread (void*, size_t, size_t, FILE*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwrite (const void*, size_t, size_t, FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseek (FILE*, long, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftell (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rewind (FILE*);
# 455 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
typedef long long fpos_t;




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetpos (FILE*, fpos_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fsetpos (FILE*, const fpos_t*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE*);
# 480 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clearerr (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) perror (const char*);






 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _pclose (FILE*);


 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) pclose (FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flushall (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fileno (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcloseall (void);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fsopen (const char*, const char*, int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getmaxstdio (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _setmaxstdio (int);
# 522 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fileno (FILE*);
# 534 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/sys/types.h" 1 3
# 21 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/sys/types.h" 3
# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stddef.h" 1 3 4
# 150 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 22 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/sys/types.h" 2 3





typedef long __time32_t;




typedef long long __time64_t;
# 45 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/sys/types.h" 3
typedef __time32_t time_t;






typedef long _off_t;


typedef _off_t off_t;







typedef unsigned int _dev_t;





typedef _dev_t dev_t;






typedef short _ino_t;


typedef _ino_t ino_t;






typedef int _pid_t;


typedef _pid_t pid_t;






typedef unsigned short _mode_t;


typedef _mode_t mode_t;






typedef int _sigset_t;


typedef _sigset_t sigset_t;





typedef int _ssize_t;


typedef _ssize_t ssize_t;





typedef long long fpos64_t;




typedef long long off64_t;



typedef unsigned int useconds_t;
# 535 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 2 3
extern __inline__ FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen64 (const char* filename, const char* mode)
{
  return fopen (filename, mode);
}

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseeko64 (FILE*, off64_t, int);






extern __inline__ off64_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftello64 (FILE * stream)
{
  fpos_t pos;
  if (fgetpos(stream, &pos))
    return -1LL;
  else
   return ((off64_t) pos);
}
# 563 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwprintf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wprintf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snwprintf (wchar_t*, size_t, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwprintf (FILE*, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnwprintf (wchar_t*, size_t, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwscanf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wscanf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swscanf (const wchar_t*, const wchar_t*, ...);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwc (wchar_t, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetwc (wchar_t, FILE*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swprintf (wchar_t*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswprintf (wchar_t*, const wchar_t*, __gnuc_va_list);



 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetws (wchar_t*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputws (const wchar_t*, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwchar (void);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getws (wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwc (wint_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putws (const wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwchar (wint_t);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfdopen(int, const wchar_t *);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfopen (const wchar_t*, const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfreopen (const wchar_t*, const wchar_t*, FILE*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfsopen (const wchar_t*, const wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtmpnam (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtempnam (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wrename (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wremove (const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wperror (const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wpopen (const wchar_t*, const wchar_t*);



int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snwprintf (wchar_t* s, size_t n, const wchar_t* format, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnwprintf (wchar_t* s, size_t n, const wchar_t* format, __gnuc_va_list arg);





int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwscanf (const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwscanf (FILE * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswscanf (const wchar_t * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
# 625 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h" 3
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wpopen (const wchar_t*, const wchar_t*);






 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putw (int, FILE*);


 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putw (int, FILE*);
# 2 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.c" 2
# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 1 3
# 21 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
# 1 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/include/stddef.h" 1 3 4
# 22 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 2 3
# 71 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
extern int _argc;
extern char** _argv;




extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argc(void);
extern char*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argv(void);
extern wchar_t*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___wargv(void);
# 112 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
   extern __attribute__ ((__dllimport__)) int __mb_cur_max;
# 137 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _errno(void);


 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __doserrno(void);
# 149 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
  extern char *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__environ(void);
  extern wchar_t *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wenviron(void);
# 172 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
  extern __attribute__ ((__dllimport__)) int _sys_nerr;
# 196 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
extern __attribute__ ((__dllimport__)) char* _sys_errlist[];
# 209 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__osver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winmajor(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winminor(void);







extern __attribute__ ((__dllimport__)) unsigned int _osver;
extern __attribute__ ((__dllimport__)) unsigned int _winver;
extern __attribute__ ((__dllimport__)) unsigned int _winmajor;
extern __attribute__ ((__dllimport__)) unsigned int _winminor;
# 260 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
 char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__pgmptr(void);

 wchar_t** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wpgmptr(void);
# 293 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
extern __attribute__ ((__dllimport__)) int _fmode;
# 303 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atof (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoi (const char*);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atol (const char*);

 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtof (const wchar_t *);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi (const wchar_t *);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtol (const wchar_t *);


double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __strtod (const char*, char**);
extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strtod (const char* __restrict__ __nptr, char** __restrict__ __endptr);
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof (const char * __restrict__, char ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold (const char * __restrict__, char ** __restrict__);




 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtol (const char*, char**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoul (const char*, char**, int);



 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstol (const wchar_t*, wchar_t**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstoul (const wchar_t*, wchar_t**, int);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstod (const wchar_t*, wchar_t**);

float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstof( const wchar_t * __restrict__, wchar_t ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstold (const wchar_t * __restrict__, wchar_t ** __restrict__);


 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wgetenv(const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wputenv(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsearchenv(const wchar_t*, const wchar_t*, wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsystem(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wmakepath(wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsplitpath (const wchar_t*, wchar_t*, wchar_t*, wchar_t*, wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfullpath (wchar_t*, const wchar_t*, size_t);




 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstombs (char*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wctomb (char*, wchar_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mblen (const char*, size_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbstowcs (wchar_t*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbtowc (wchar_t*, const char*, size_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rand (void);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) srand (unsigned int);

 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) calloc (size_t, size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) malloc (size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) realloc (void*, size_t);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) free (void*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abort (void) __attribute__ ((__noreturn__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit (int) __attribute__ ((__noreturn__));


int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atexit (void (*)(void));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) system (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getenv (const char*);


 void* __attribute__((__cdecl__)) bsearch (const void*, const void*, size_t, size_t,
          int (*)(const void*, const void*));
 void __attribute__((__cdecl__)) qsort(void*, size_t, size_t,
      int (*)(const void*, const void*));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abs (int) __attribute__ ((__const__));
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) labs (long) __attribute__ ((__const__));
# 385 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

 div_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) div (int, int) __attribute__ ((__const__));
 ldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ldiv (long, long) __attribute__ ((__const__));







 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _beep (unsigned int, unsigned int) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _seterrormode (int) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _sleep (unsigned long) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit (int) __attribute__ ((__noreturn__));



typedef int (* _onexit_t)(void);
_onexit_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _onexit( _onexit_t );

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _gcvt (double, int, char*);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _makepath (char*, const char*, const char*, const char*, const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _splitpath (const char*, char*, char*, char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fullpath (char*, const char*, size_t);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltoa (long, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultoa(unsigned long, char*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itow (int, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltow (long, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultow (unsigned long, wchar_t*, int);


 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _atoi64(const char *);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64toa(long long, char *, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64toa(unsigned long long, char *, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi64(const wchar_t *);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64tow(long long, wchar_t *, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64tow(unsigned long long, wchar_t *, int);

 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotl)(unsigned int, int) __attribute__ ((__const__));
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotr)(unsigned int, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotl)(unsigned long, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotr)(unsigned long, int) __attribute__ ((__const__));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _set_error_mode (int);
# 477 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ltoa (long, char*, int);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gcvt (double, int, char*);
# 497 "c:\\program files (x86)\\codeblocks\\mingw\\bin\\../lib/gcc/mingw32/4.7.1/../../../../include/stdlib.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _Exit(int) __attribute__ ((__noreturn__));





typedef struct { long long quot, rem; } lldiv_t;

lldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lldiv (long long, long long) __attribute__ ((__const__));

long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) llabs(long long);





long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoll (const char* __restrict__, char** __restrict, int);
unsigned long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoull (const char* __restrict__, char** __restrict__, int);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoll (const char *);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wtoll (const wchar_t *);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltoa (long long, char *, int);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltoa (unsigned long long , char *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltow (long long, wchar_t *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltow (unsigned long long, wchar_t *, int);
# 3 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.c" 2

# 1 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.h" 1



# 1 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\no.h" 1



typedef struct nos no_t;

no_t *cria_no(void*);
no_t *obtem_proximo(no_t*);
no_t *obtem_anterior(no_t*);

void *obtem_dado(no_t*);

void liga_nos(no_t*, no_t*);
void desliga_no(no_t*);
void swap_no(no_t*, no_t*);
# 5 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.h" 2

typedef struct listas_enc lista_enc_t;

lista_enc_t *cria_lista_enc(void);

void add_cauda(lista_enc_t*, no_t*);
void add_cabeca(lista_enc_t*, no_t*);
void rem_elemento(lista_enc_t*, int);
void imprime_lista(lista_enc_t*);
void imprime_lista_tras(lista_enc_t*);
void libera_lista(lista_enc_t*);
no_t* obter_cabeca(lista_enc_t*);

void bubble_sort(lista_enc_t*);
void select_sort(lista_enc_t*);

int posicao(lista_enc_t*, no_t*);
int tamanho_enc(lista_enc_t*);
int lista_vazia(lista_enc_t*);
int obter_tamanho(lista_enc_t*);
# 5 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.c" 2
# 1 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\grafo.h" 1




# 1 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\vertice.h" 1







typedef struct vertice vertice_t;

vertice_t* cria_vertice(int);

int obter_id(vertice_t*);
int obter_tamanho_arestas(vertice_t*);
int obtem_visitado(vertice_t*);
int obter_dist(vertice_t*);

void liga_vertices(vertice_t*, vertice_t*);
void imprime_arestas(vertice_t*);
void libera_vertice(vertice_t*);
void pai(vertice_t*, no_t*);
void dist(vertice_t*, int);
void set_visitado(vertice_t*, int);

no_t* obter_cabeca_arestas(vertice_t*);
no_t *obtem_pai(vertice_t*);
# 6 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\grafo.h" 2

typedef struct grafos grafo_t;

grafo_t* cria_grafo();

void libera_grafo(grafo_t*);
void imprime_grafo(grafo_t*);
void imprime_arvore(grafo_t*);
void add_cabeca_grafo(grafo_t*, no_t*);
void busca_largura(grafo_t*, no_t*);
# 6 "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.c" 2




struct listas_enc {
    no_t *cabeca;
    no_t *cauda;
    int tamanho;
};


lista_enc_t *cria_lista_enc (void) {

    lista_enc_t *p = malloc(sizeof(lista_enc_t));

    if (p == ((void *)0)){
        perror("cria_lista_enc:");
        exit(1);
    }

    p->cabeca = ((void *)0);
    p->cauda = ((void *)0);
    p->tamanho = 0;

    return p;
}

no_t* obter_cabeca(lista_enc_t *lista){

    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\nobter_cabeca: ponteiros invalidos");
        exit(1);
    }
    return lista->cabeca;
}

int obter_tamanho(lista_enc_t *lista){
    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\nobter_tamanho: ponteiros invalidos");
        exit(1);
    }
    return lista->tamanho;
}

void add_cauda(lista_enc_t *lista, no_t* elemento){


        printf("\n\nadd_cauda():");


    if (lista == ((void *)0) || elemento == ((void *)0)){
        fprintf((&_iob[2]),"\nadd_cauda: ponteiros invalidos");
        exit(1);
    }


        printf("\nadicionando %p --- tamanho: %d", elemento, lista->tamanho);



   if (lista->tamanho == 0){
        lista->cauda = elemento;
        lista->cabeca = elemento;
        lista->tamanho++;

        desliga_no(elemento);
   }
   else {

        desliga_no(elemento);

        liga_nos(lista->cauda, elemento);

        lista->cauda = elemento;
        lista->tamanho++;
   }

        printf("\nelemento %p adicionado --- tamanho: %d", elemento, lista->tamanho);

}
void add_cabeca(lista_enc_t *lista, no_t* elemento){


        printf("\n\nadd_cabeca():");


    if (lista == ((void *)0) || elemento == ((void *)0)){
        fprintf((&_iob[2]),"\nadd_cabeca: ponteiros invalidos");
        exit(1);
    }


        printf("\nadicionando %p --- tamanho: %d", elemento, lista->tamanho);



   if (lista->tamanho == 0){
        lista->cauda = elemento;
        lista->cabeca = elemento;
        lista->tamanho++;
        desliga_no(elemento);
   }
   else {

        desliga_no(elemento);

        liga_nos(elemento, lista->cabeca);
        lista->cabeca = elemento;
        lista->tamanho++;
   }

        printf("\nelemento %p adicionado --- tamanho: %d", elemento, lista->tamanho);

}
void rem_elemento(lista_enc_t* lista, int index){

    no_t *no = ((void *)0);
    int i = 1;


        printf("\n\nrem_elemento():");


    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"rem_elemento: ponteiros invalidos");
        exit(1);
    }
    if(lista->tamanho == 0){
        fprintf((&_iob[2]), "rem_elemento: lista vazia!");
        return;
    }
    no = lista->cabeca;
    while(no){

            printf("\ni: %d", i);

        if(i == index){
            if(index == 1){
                lista->cabeca = obtem_proximo(no);
                desliga_no(no);
            }
            else if(index == lista->tamanho){
                lista->cauda = obtem_anterior(no);
                desliga_no(no);
            }
            else{
                liga_nos(obtem_anterior(no), obtem_proximo(no));
                desliga_no(no);
            }
            lista->tamanho--;

                printf("\nDado removido: %p", obtem_dado(no));

            return;
        }
        no = obtem_proximo(no);
        i++;
    }
}
int posicao(lista_enc_t *lista, no_t *elemento){

    no_t *no = ((void *)0);
    int index = 1;


        printf("\n\nposicao():");


    if (lista == ((void *)0) || elemento == ((void *)0)){
        fprintf((&_iob[2]),"\nposicao: ponteiros invalidos");
        exit(1);
    }
    no = lista->cabeca;
    while (no){

            printf("\nindex: %d", index);

        if(no == elemento)
            return index;
        no = obtem_proximo(no);
        index++;
    }
    return -1;
}
int tamanho_enc(lista_enc_t *lista){

    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\ntamanho: ponteiros invalidos");
        exit(1);
    }
    return lista->tamanho;
}
int lista_vazia(lista_enc_t *lista){

    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\nlista_vazia: ponteiros invalidos");
        exit(1);
    }
    if(lista->tamanho == 0)
        return 1;
    return 0;
}
void imprime_lista (lista_enc_t *lista){

    no_t *no = ((void *)0);


        printf("\n\nimprime_lista():");


    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\nimprime_lista: ponteiros invalidos");
        exit(1);
    }

    no = lista->cabeca;

    while (no){
        printf("\nDados: %p", obtem_dado(no));
        no = obtem_proximo(no);
    }
}
void imprime_lista_tras(lista_enc_t *lista){

    no_t * no = ((void *)0) ;


        printf("\n\nimprime_lista_tras():");


    if(lista == ((void *)0)){
        fprintf((&_iob[2]), "imprime_lista_tras: ponteiros invalidos");
        exit(1);
    }

    no = lista->cauda;
    while(no){
        printf("Dados: %p\n", obtem_dado(no));
        no = obtem_anterior(no);
    }
}
void libera_lista(lista_enc_t *lista){

    no_t *no = ((void *)0);
    no_t *proximo = ((void *)0);


        printf("\n\nlibera_lista():");


    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\nlibera_lista: ponteiros invalidos");
        exit(1);
    }

    proximo = lista->cabeca;

    while (no){
        no = proximo;
        free(no);
        no = obtem_proximo(proximo);
    }
    free(lista);

        printf("\nlista liberada!");

}

void bubble_sort(lista_enc_t *lista){

    no_t *no = ((void *)0);

    int i, j;


        printf("\n\nbubble_sort(): ");


    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\nbubble_sort: ponteiros invalidos");
        exit(1);
    }

    for(i = lista->tamanho; i > 1; i--){
        no = lista->cabeca;
        for(j = 0; j < i - 1; j++){
            if(obtem_dado(no) > obtem_dado(obtem_proximo(no))){
                swap_no(no, obtem_proximo(no));

                    imprime_lista(lista);

            }
            no = obtem_proximo(no);
        }
    }
}

void select_sort(lista_enc_t *lista){

    no_t *no = ((void *)0);
    no_t *max = ((void *)0);
    no_t *fim = ((void *)0);

    int i, j;


        printf("\n\nselect_sort():");


    if (lista == ((void *)0)){
        fprintf((&_iob[2]),"\nselect_sort: ponteiros invalidos");
        exit(1);
    }

    fim = lista->cauda;
    for(i = lista->tamanho; i > 1; i--){
        max = lista->cabeca;
        no = lista->cabeca;
        j = 0;
        do{
            if((obtem_dado(no)) > ((obtem_dado(max))))
                max = no;
            if(obtem_proximo(no))
                no = obtem_proximo(no);
            j++;
        }while(j < i);
        swap_no(fim, max);

            imprime_lista(lista);

        fim = obtem_anterior(fim);
    }
}
