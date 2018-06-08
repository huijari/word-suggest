(include "io.h")
(include <stdio.h>)
(include <stdlib.h>)

(function readNumber () -> uint16_t
	(decl ((uint16_t value)))
	(scanf "%hu\\n" &value)
	(return value))

(function readWord () -> char*
	(decl ((char* value = (malloc (* 8192 (sizeof char))))))
	(scanf "%8191s\\n" value)
	(return value))

(function readWords ((uint16_t length)) -> char**
	(decl ((char** words = (malloc (* length (sizeof char*))))))
	(for ((int i = 0) (< i length) i++)
		(set words[i] (readWord)))
	(return words))
