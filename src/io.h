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
 * Writes a word to stdin
 */
void writeWord(char* word);

#endif
