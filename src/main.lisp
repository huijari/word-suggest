(load "line.lisp")

(include "distance.h")
(include "io.h")
(include "tree.h")
(include <stddef.h>)
(include <stdlib.h>)

(function main () -> int
	(decl ((uint16_t dictionaryLength = (readNumber))
				 (uint16_t changes = (readNumber))
				 (char* query = (readWord))))

	(line)
	(decl ((Node* tree = NULL)))
	(for ((int i = 0) (< i dictionaryLength) i++)
		(decl ((char* text = (readWord))
					 (uint16_t cost = (distance text query))))
		(if (<= cost changes)
			(set tree (insert tree cost text))
			(free text)))
	(free query)

	(line)
	(traverse tree)
	(return 0))
