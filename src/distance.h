#ifndef MOD_DISTANCE
#define MOD_DISTANCE

#include <stdint.h>

/**
 * Computes the Levenshtein distance from two strings
 * 
 * @param text The first string
 * @param query The second string
 */
uint16_t distance(char* text, char* query);

#endif
