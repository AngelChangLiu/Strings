/*--------------------------------------------------------------------*/
/* stra.c                                                             */
/* Author: Angel Chang Liu                                            */
/*--------------------------------------------------------------------*/

#include "str.h"
#include <assert.h>

/*--------------------------------------------------------------------*/

size_t Str_getLength(const char s[]) {

   size_t uLength = 0;
   assert(s != NULL);

   while (s[uLength] != '\0')
      uLength++;

   return uLength;
}

/*--------------------------------------------------------------------*/

char *Str_copy(char dst[], const char src[]) {

    size_t uLength = 0; /* index */
    assert (src != NULL);
    assert (dst != NULL);

    while (src[uLength] != '\0') {
        dst[uLength] = src[uLength];
        uLength++;
    }

    dst[uLength] = '\0'; /* adds a \0 at the end */

   return dst;
}

/*--------------------------------------------------------------------*/

char *Str_concat(char dst[], const char src[]) {
    size_t uLength = 0; /* index */
    size_t dstLength; /* to find the end of dst to put src */
    
    assert (src != NULL);
    assert (dst != NULL);

    dstLength = Str_getLength(dst);

    while (src[uLength] != '\0') {
        dst[dstLength + uLength] = src[uLength];
        uLength++;
    }

    dst[dstLength + uLength] = '\0'; /* adds a \0 at the end */

    return dst;
}

/*--------------------------------------------------------------------*/

int Str_compare(const char s1[], const char s2[]) {
    size_t uLength = 0; /* index */

    assert (s1 != NULL);
    assert (s2 != NULL);

    while (s1[uLength] != '\0') {
        if (s1[uLength] > s2[uLength]) 
            return 1;

        else if(s1[uLength] < s2[uLength])
            return -1;

        else if (s2[uLength] == '\0') /* if s2 ends early */
            return 1;

        uLength++;
    }

    if (s2[uLength] != '\0') /* if s1 ends early */
        return -1;

    return 0;
}

/*--------------------------------------------------------------------*/

char *Str_search(const char haystack[], const char needle[]) {
    size_t uLength = 0; /* index*/
    size_t nLength; /* length of needle */
    size_t counter; /* after found, keep track of first index */
    
    assert (haystack != NULL);
    assert (needle != NULL);

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

    return NULL;
}

