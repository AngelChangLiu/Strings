/*--------------------------------------------------------------------*/
/* str.h                                                              */
/* Author: Angel Chang Liu                                            */
/*--------------------------------------------------------------------*/

#include <stddef.h>

/*--------------------------------------------------------------------*/
/* This function calculates the length of the string pointed 
to by s, excluding the terminating null byte ('\0' and returns the 
number of bytes in the string pointed to be s */

size_t Str_getLength(const char *s);

/*--------------------------------------------------------------------*/

/* This  function copy the string pointed to by src, into a string at
the buffer pointed to by dst.  The programmer is responsible for 
allocating a destination buffer large enough, that is, strlen(src) + 1. 
This function returns the pointer to the 0th index of the new dst */

char *Str_copy(char *dst, const char *src);

/*--------------------------------------------------------------------*/

/* This function catenates the string pointed to by src, after the 
string pointed to by dst (overwriting its terminating null byte).  The 
programmer is responsible for allocating a destination buffer large 
enough, that  is,  strlen(dst)  +strlen(src) + 1. This function 
return dst. */

char *Str_concat(char *dst, const char *src);

/*--------------------------------------------------------------------*/

/* The function compares the two strings s1 and s2 lexicographically. 
Return an integer less than, equal to, or greater than zero if s1 is 
found, respectively, to be less than, to match, or be greater than s2 */

int Str_compare(const char *s1, const char *s2);

/*--------------------------------------------------------------------*/

/* This function finds the first occurrence of the substring 
needle in the string haystack.  The terminating null bytes ('\0') are 
not compared. This function returns a pointer to the beginning of the 
located substring, or NULL if the substring is not found. If needle is 
the empty string, the return value is always haystack itself */

char *Str_search(const char *haystack, const char *needle); 