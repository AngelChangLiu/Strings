# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"





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
# 7 "stra.c" 2
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



# 8 "stra.c" 2




# 11 "stra.c"
size_t Str_getLength(const char s[]) {

   size_t uLength = 0;
   
# 14 "stra.c" 3 4
  ((
# 14 "stra.c"
  s != 
# 14 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 14 "stra.c"
  "s != NULL"
# 14 "stra.c" 3 4
  , "stra.c", 14, __extension__ __PRETTY_FUNCTION__))
# 14 "stra.c"
                   ;

   while (s[uLength] != '\0')
      uLength++;

   return uLength;
}



char *Str_copy(char dst[], const char src[]) {

    size_t uLength = 0;
    
# 27 "stra.c" 3 4
   ((
# 27 "stra.c"
   src != 
# 27 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 27 "stra.c"
   "src != NULL"
# 27 "stra.c" 3 4
   , "stra.c", 27, __extension__ __PRETTY_FUNCTION__))
# 27 "stra.c"
                       ;
    
# 28 "stra.c" 3 4
   ((
# 28 "stra.c"
   dst != 
# 28 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 28 "stra.c"
   "dst != NULL"
# 28 "stra.c" 3 4
   , "stra.c", 28, __extension__ __PRETTY_FUNCTION__))
# 28 "stra.c"
                       ;

    while (src[uLength] != '\0') {
        dst[uLength] = src[uLength];
        uLength++;
    }

    dst[uLength] = '\0';

   return dst;
}



char *Str_concat(char dst[], const char src[]) {
    size_t uLength = 0;
    size_t dstLength;

    
# 46 "stra.c" 3 4
   ((
# 46 "stra.c"
   src != 
# 46 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 46 "stra.c"
   "src != NULL"
# 46 "stra.c" 3 4
   , "stra.c", 46, __extension__ __PRETTY_FUNCTION__))
# 46 "stra.c"
                       ;
    
# 47 "stra.c" 3 4
   ((
# 47 "stra.c"
   dst != 
# 47 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 47 "stra.c"
   "dst != NULL"
# 47 "stra.c" 3 4
   , "stra.c", 47, __extension__ __PRETTY_FUNCTION__))
# 47 "stra.c"
                       ;

    dstLength = Str_getLength(dst);

    while (src[uLength] != '\0') {
        dst[dstLength + uLength] = src[uLength];
        uLength++;
    }

    dst[dstLength + uLength] = '\0';

    return dst;
}



int Str_compare(const char s1[], const char s2[]) {
    size_t uLength = 0;

    
# 66 "stra.c" 3 4
   ((
# 66 "stra.c"
   s1 != 
# 66 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 66 "stra.c"
   "s1 != NULL"
# 66 "stra.c" 3 4
   , "stra.c", 66, __extension__ __PRETTY_FUNCTION__))
# 66 "stra.c"
                      ;
    
# 67 "stra.c" 3 4
   ((
# 67 "stra.c"
   s2 != 
# 67 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 67 "stra.c"
   "s2 != NULL"
# 67 "stra.c" 3 4
   , "stra.c", 67, __extension__ __PRETTY_FUNCTION__))
# 67 "stra.c"
                      ;

    while (s1[uLength] != '\0') {
        if (s1[uLength] > s2[uLength])
            return 1;

        else if(s1[uLength] < s2[uLength])
            return -1;

        else if (s2[uLength] == '\0')
            return 1;

        uLength++;
    }

    if (s2[uLength] != '\0')
        return -1;

    return 0;
}



char *Str_search(const char haystack[], const char needle[]) {
    size_t uLength = 0;
    size_t nLength;
    size_t counter;

    
# 95 "stra.c" 3 4
   ((
# 95 "stra.c"
   haystack != 
# 95 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 95 "stra.c"
   "haystack != NULL"
# 95 "stra.c" 3 4
   , "stra.c", 95, __extension__ __PRETTY_FUNCTION__))
# 95 "stra.c"
                            ;
    
# 96 "stra.c" 3 4
   ((
# 96 "stra.c"
   needle != 
# 96 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 96 "stra.c"
   "needle != NULL"
# 96 "stra.c" 3 4
   , "stra.c", 96, __extension__ __PRETTY_FUNCTION__))
# 96 "stra.c"
                          ;

    nLength = Str_getLength(needle);

    if (nLength == 0) {
        return (char *)haystack;
    }

    while (haystack[uLength] != '\0') {
        counter = 0;
        while (needle[counter] == haystack[uLength + counter]) {
            counter++;
            if (needle[counter] == '\0') {
                return (char *)&haystack[uLength];
            }
        }
        uLength++;
    }

    return 
# 115 "stra.c" 3 4
          ((void *)0)
# 115 "stra.c"
              ;
}
