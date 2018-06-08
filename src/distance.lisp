(load "line.lisp")

(include "distance.h")

(function min ((uint16_t a) (uint16_t b)) -> uint16_t
	(if (< a b) (return a))
	(return b))

(function distance ((char* text)
										(uint16_t textLength)
										(char* query)
										(uint16_t queryLength)) -> uint16_t

	(if (== textLength 0) (return queryLength))
	(if (== queryLength 0) (return textLength))

	(line)
	(decl ((uint16_t textEnd = (- textLength 1))
				 (uint16_t queryEnd = (- queryLength 1))
				 (uint16_t cost = (!= text[textEnd] query[queryEnd]))))

	(line)
	(decl ((uint16_t up = (distance text textEnd query queryLength))
				 (uint16_t left = (distance text textLength query queryEnd))
				 (uint16_t upLeft = (distance text textEnd query queryEnd))))

	(line)
	(return (min (+ 1 (min up left)) (+ cost upLeft))))
