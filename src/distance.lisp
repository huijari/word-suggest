(load "line.lisp")

(include "distance.h")
(include <stdio.h>)
(include <stdlib.h>)
(include <string.h>)

(function min ((uint16_t a) (uint16_t b)) -> uint16_t
	(if (< a b) (return a))
	(return b))

(function levenshtein ((char* text)
											 (uint16_t textLength)
											 (char* query)
											 (uint16_t queryLength)
											 (uint16_t** memory)) -> uint16_t

	(if (!= memory[textLength][queryLength] 0)
		(return (- memory[textLength][queryLength] 1)))
	(if (== textLength 0) (return queryLength))
	(if (== queryLength 0) (return textLength))

	(line)
	(decl ((uint16_t textEnd = (- textLength 1))
				 (uint16_t queryEnd = (- queryLength 1))
				 (uint16_t cost = (!= text[textEnd] query[queryEnd]))))

	(line)
	(decl ((uint16_t up = (levenshtein text textEnd query queryLength memory))
				 (uint16_t left = (levenshtein text textLength query queryEnd memory))
				 (uint16_t upLeft = (levenshtein text textEnd query queryEnd memory))))

	(line)
	(set memory[textLength][queryLength] (+ 1 (min (+ 1 (min up left)) (+ cost upLeft))))
	(return (- memory[textLength][queryLength] 1)))

(function distance ((char* text) (char* query)) -> uint16_t
	(decl ((uint16_t textLength = (strlen text))
				 (uint16_t queryLength = (strlen query))
				 (uint16_t** memory = (malloc (* (sizeof uint16_t*) (+ 1 textLength))))))

	(line)
	(for ((int i = 0) (< i (+ 1 textLength)) i++)
		(set memory[i] (calloc (+ 1 queryLength) (sizeof uint16_t))))
	(decl ((uint16_t cost = (levenshtein text textLength query queryLength memory))))

	(line)
	(for ((size_t i = 0) (< i textLength) i++)
		(free memory[i]))
	(free memory)
	(return cost))
