# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"





# 1 "str.h" 1





# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 7 "str.h" 2







# 13 "str.h"
size_t Str_getLength(const char *s);
# 22 "str.h"
char *Str_copy(char *dst, const char *src);
# 32 "str.h"
char *Str_concat(char *dst, const char *src);







int Str_compare(const char *s1, const char *s2);
# 50 "str.h"
char *Str_search(const char *haystack, const char *needle);
# 7 "strp.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 8 "strp.c" 2




# 11 "strp.c"
size_t Str_getLength(const char *s)
{
   const char *pcEnd;
   
# 14 "strp.c" 3 4
  ((
# 14 "strp.c"
  s != 
# 14 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 14 "strp.c"
  "s != NULL"
# 14 "strp.c" 3 4
  , "strp.c", 14, __extension__ __PRETTY_FUNCTION__))
# 14 "strp.c"
                   ;
   pcEnd = s;

   while (*pcEnd != '\0')
      pcEnd++;

   return (size_t)(pcEnd - s);
}



char *Str_copy(char *dst, const char *src)
{
    char *dstCopy;
    
# 28 "strp.c" 3 4
   ((
# 28 "strp.c"
   src != 
# 28 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 28 "strp.c"
   "src != NULL"
# 28 "strp.c" 3 4
   , "strp.c", 28, __extension__ __PRETTY_FUNCTION__))
# 28 "strp.c"
                       ;
    
# 29 "strp.c" 3 4
   ((
# 29 "strp.c"
   dst != 
# 29 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 29 "strp.c"
   "dst != NULL"
# 29 "strp.c" 3 4
   , "strp.c", 29, __extension__ __PRETTY_FUNCTION__))
# 29 "strp.c"
                       ;
    dstCopy = dst;

    while (*src != '\0') {
        *dstCopy = *src;
        dstCopy++;
        src++;
    }

    *dstCopy = '\0';

    return dst;
}


char *Str_concat(char *dst, const char *src)
{
    char *pcReturn;

    
# 48 "strp.c" 3 4
   ((
# 48 "strp.c"
   src != 
# 48 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 48 "strp.c"
   "src != NULL"
# 48 "strp.c" 3 4
   , "strp.c", 48, __extension__ __PRETTY_FUNCTION__))
# 48 "strp.c"
                       ;
    
# 49 "strp.c" 3 4
   ((
# 49 "strp.c"
   dst != 
# 49 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 49 "strp.c"
   "dst != NULL"
# 49 "strp.c" 3 4
   , "strp.c", 49, __extension__ __PRETTY_FUNCTION__))
# 49 "strp.c"
                       ;

    pcReturn = dst;

    while (*dst != '\0') {
        dst++;
    }

    while (*src != '\0') {
        *dst = *src;
        dst++;
        src++;
    }

    *dst = '\0';
    return pcReturn;
}



int Str_compare(const char *s1, const char *s2)
{
    
# 71 "strp.c" 3 4
   ((
# 71 "strp.c"
   s1 != 
# 71 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 71 "strp.c"
   "s1 != NULL"
# 71 "strp.c" 3 4
   , "strp.c", 71, __extension__ __PRETTY_FUNCTION__))
# 71 "strp.c"
                      ;
    
# 72 "strp.c" 3 4
   ((
# 72 "strp.c"
   s2 != 
# 72 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 72 "strp.c"
   "s2 != NULL"
# 72 "strp.c" 3 4
   , "strp.c", 72, __extension__ __PRETTY_FUNCTION__))
# 72 "strp.c"
                      ;

    while (*s1 != '\0') {
        if (*s1 > *s2)
            return 1;

        else if (*s1 < *s2)
            return -1;

        else if (*s2 == '\0')
            return 1;

        s1++;
        s2++;
    }

    if (*s2 != '\0')
        return -1;

    return 0;
}



char *Str_search(const char *haystack, const char *needle)
{
    const char *startNeedle;
    const char *startHaystack;

    
# 101 "strp.c" 3 4
   ((
# 101 "strp.c"
   haystack != 
# 101 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 101 "strp.c"
   "haystack != NULL"
# 101 "strp.c" 3 4
   , "strp.c", 101, __extension__ __PRETTY_FUNCTION__))
# 101 "strp.c"
                            ;
    
# 102 "strp.c" 3 4
   ((
# 102 "strp.c"
   needle != 
# 102 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 102 "strp.c"
   "needle != NULL"
# 102 "strp.c" 3 4
   , "strp.c", 102, __extension__ __PRETTY_FUNCTION__))
# 102 "strp.c"
                          ;


    if (Str_getLength(needle) == 0) {
        return (char *) haystack;
    }

    startNeedle = needle;

    while (*haystack != '\0') {
        startHaystack = haystack;

        while (*needle == *haystack) {
            needle++;
            haystack++;

            if (*needle == '\0')
                return (char *)startHaystack;

            else if (*needle != *haystack) {
                needle = startNeedle;
                haystack = startHaystack++;
                break;
            }
        }
        haystack++;
    }

    return 
# 130 "strp.c" 3 4
          ((void *)0)
# 130 "strp.c"
              ;

}
