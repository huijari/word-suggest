(load "line.lisp")

(include "distance.h")
(include <stddef.h>)
(include <string.h>)

(function min ((uint16_t a) (uint16_t b)) -> uint16_t
	(if (< a b) (return a))
	(return b))

(function levenshtein ((char* text)
											 (uint16_t textLength)
											 (char* query)
											 (uint16_t queryLength)
											 (uint16_t** memory)) -> uint16_t

	(if (== textLength 0) (return queryLength))
	(if (== queryLength 0) (return textLength))

	(line)
	(decl ((uint16_t textEnd = (- textLength 1))
				 (uint16_t queryEnd = (- queryLength 1))
				 (uint16_t cost = (!= text[textEnd] query[queryEnd]))))

	(line)
	(decl ((uint16_t up = (levenshtein text textEnd query queryLength NULL))
				 (uint16_t left = (levenshtein text textLength query queryEnd NULL))
				 (uint16_t upLeft = (levenshtein text textEnd query queryEnd NULL))))

	(line)
	(return (min (+ 1 (min up left)) (+ cost upLeft))))

(function distance ((char* text) (char* query)) -> uint16_t
	(return (levenshtein text (strlen text) query (strlen query) NULL)))
