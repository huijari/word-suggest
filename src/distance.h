#ifndef MOD_DISTANCE
#define MOD_DISTANCE

#include <stdint.h>

/**
 * Computes the Levenshtein distance from two strings
 * 
 * @param text The first string
 * @param textLength Length of the first string
 * @param query The second string
 * @param querySelength Length of the second string
 */
uint16_t distance(char* text,
                  uint16_t textLength,
                  char* query,
                  uint16_t queryLength);

#endif
