/*--------------------------------------------------------------------*/
/* strp.c                                                             */
/* Author: Angel Chang Liu                                            */
/*--------------------------------------------------------------------*/

#include "str.h"
#include <assert.h>

/*--------------------------------------------------------------------*/

size_t Str_getLength(const char *s)
{
   const char *pcEnd;
   assert(s != NULL);
   pcEnd = s;

   while (*pcEnd != '\0')
      pcEnd++;

   return (size_t)(pcEnd - s);
}

/*--------------------------------------------------------------------*/

char *Str_copy(char *dst, const char *src)
{
    char *dstCopy; 
    assert (src != NULL);
    assert (dst != NULL);
    dstCopy = dst;

    while (*src != '\0') {
        *dstCopy = *src;
        dstCopy++;
        src++;
    }

    *dstCopy = '\0'; /* add \0 to the end */

    return dst;
}
/*--------------------------------------------------------------------*/

char *Str_concat(char *dst, const char *src) 
{
    char *pcReturn; /* copy of dst */

    assert (src != NULL);
    assert (dst != NULL);

    pcReturn = dst;

    while (*dst != '\0') {
        dst++;
    }
    /* adds src */
    while (*src != '\0') {
        *dst = *src;
        dst++;
        src++;
    }
    
    *dst = '\0'; /* add \0 to the end */
    return pcReturn;
}

/*--------------------------------------------------------------------*/

int Str_compare(const char *s1, const char *s2) 
{
    assert (s1 != NULL);
    assert (s2 != NULL);

    while (*s1 != '\0') {
        if (*s1 > *s2) 
            return 1;

        else if (*s1 < *s2) 
            return -1;

        else if (*s2 == '\0') /* if s2 ends early */
            return 1;

        s1++;
        s2++;
    }

    if (*s2 != '\0') /* if s1 ends early */
        return -1;

    return 0;
}

/*--------------------------------------------------------------------*/

char *Str_search(const char *haystack, const char *needle) 
{
    const char *startNeedle; /* after found, indexes the first index */
    const char *startHaystack; /* keeps track of haystack index */

    assert (haystack != NULL);
    assert (needle != NULL);

    /* if needle has nothing */
    if (Str_getLength(needle) == 0) {
        return (char *) haystack;
    }

    startNeedle = needle;

    while (*haystack != '\0') {
        startHaystack = haystack;
        /* found first match */
        while (*needle == *haystack) {
            needle++;
            haystack++;
            /* completed match */
            if (*needle == '\0') 
                return (char *)startHaystack;
            /* match not completed */
            else if (*needle != *haystack) {
                needle = startNeedle;
                haystack = startHaystack++;
                break;
            }
        }
        haystack++;
    }

    return NULL;

}
