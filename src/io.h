#ifndef MOD_IO
#define MOD_IO

#include <stdint.h>

/**
 * Reads a number from stdin 
 */
uint16_t readNumber();

/**
 * Reads a word from stdin
 */
char* readWord();

/**
 * Reads a list of words from stdin
 * 
 * @param length Length of the list
 */
char** readWords(uint16_t length);

#endif
