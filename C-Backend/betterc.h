/**
 * "betterc.h" provides utilities for integer and string operations in C.
 */

#ifndef BETTERC_H
#define BETTERC_H

#include <stdbool.h>

/**
 * Checks if a number is an integer.
 * 
 * @param num The number to check.
 * @return true if num is an integer, false otherwise.
 */
bool is_int(long double num);

/**
 * Checks if two strings are equal.
 * 
 * @param s1 The first string.
 * @param s2 The second string.
 * @return true if s1 and s2 are equal, false otherwise.
 */
bool equal_str(const char *s1, const char *s2);

/**
 * Formats a string.
 * 
 * @param format The format string (printf-style).
 * @param ... Additional arguments for formatting.
 * @return A dynamically allocated formatted string. 
 *         Make sure to call free() after usage.
 */
char *fstr(const char *format, ...);

/**
 * Runs unit tests for functions in "betterc.h".
 */
void test_betterc_h();

#endif
